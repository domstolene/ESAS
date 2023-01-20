const Ajv2020 = require("ajv/dist/2020")
const addFormats = require('ajv-formats')
const fs = require('fs')

const ajv = new Ajv2020()
addFormats(ajv)

const jsonSchemaFolders = [
    "kontrakter/politi/varetekt"
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

const readFileContent = (filePath) => fs.readFileSync(filePath).toString()

const validateJsonSchemas = (directory) => {
    const jsonSchema = getJsonSchema(directory)
    const jsonSchemaValidator = ajv.compile(
        JSON.parse(readFileContent(jsonSchema))
    )

    const jsonExamples = getJsonExamples(directory)
        .map(readFileContent)
        .map(content => JSON.parse(content))

    console.log('Validating schema ' + jsonSchema)
    jsonExamples.forEach(json => jsonSchemaValidator(json))
}

const findAndValidate = (schemaFolderBasePath) => {
    const folderContents = fs.readdirSync(schemaFolderBasePath)
        .map(content => schemaFolderBasePath + '/' + content)

    if (folderContents.find(isJsonSchema)) {
        validateJsonSchemas(schemaFolderBasePath)
    } else {
        folderContents
            .filter(isDirectory)
            .filter(d => !d.endsWith("target"))
            .forEach(validateJsonSchemas)
    }
}

jsonSchemaFolders.forEach(findAndValidate)
