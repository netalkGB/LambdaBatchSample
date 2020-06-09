exports.lambdaHandler = async (event: any, context: any) => {
    if (process.env['NODE_ENV'] !== 'production') {
        console.log('running on development mode.')
    } else {
        console.log('running on production mode.')
    }
    const response = 'test'
    return response
}