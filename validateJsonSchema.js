const Ajv2020 = require("ajv/dist/2020")
const addFormats = require('ajv-formats')
const fs = require('fs')

const ajv = new Ajv2020(opts = {strict: true})
addFormats(ajv)

const jsonSchemaFolders = [
    "kontrakter/politi/varetekt",
    "kontrakter/politi/bestillvaretektsplass",
    "kontrakter/da/varetekt",
    "kontrakter/felles/kvittering"
]

const isDirectory = (path) => {
    return fs.statSync(path).isDirectory()
}

const isJsonSchema = (filename) => {
    return filename.endsWith('.schema.json')
}

const getJsonSchema = (directory) => {
    return directory + '/' + fs.readdirSync(directory).find(isJsonSchema)
}

const getJsonExamples = (directory) => {
    return fs.readdirSync(directory)
        .filter(file => file.endsWith('.json') && !file.endsWith('.schema.json'))
        .map(file => directory + '/' + file)
}

const readFileContent = (filePath) => {
    return {
        file: filePath,
        json: JSON.parse(fs.readFileSync(filePath).toString())
    }
}

const validateJsonSchemas = (directory) => {
    console.log("Finding JSON-schema in " + directory)
    const jsonSchema = getJsonSchema(directory)
    console.log("Loading JSON-schema " + jsonSchema)
    const jsonSchemaValidator = ajv.compile(readFileContent(jsonSchema).json)

    const jsonExamples = getJsonExamples(directory + "/eksempelfiler")
        .map(readFileContent)

    jsonExamples.forEach(exampleJson => {
        console.log("Validating " + exampleJson.file + " using " + jsonSchema)
        const validationResult = jsonSchemaValidator(exampleJson.json)
        if (!validationResult) {
            throw Error(jsonSchemaValidator.errors.map(error => error.instancePath + " " + error.message).join("\n"))
        }
    })

    console.log("Successfully validated " + jsonSchema + "\n")
}

const findAndValidate = (schemaFolderBasePath) => {
    const folderContents = fs.readdirSync(schemaFolderBasePath)
        .map(content => schemaFolderBasePath + '/' + content)

        folderContents
            .filter(d => d !== "target")
            .filter(isDirectory)
            .forEach(validateJsonSchemas)
}

jsonSchemaFolders.forEach(findAndValidate)
