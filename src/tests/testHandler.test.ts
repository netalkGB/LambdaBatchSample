const app = require('../app')

test('verifies successful response', async () => {
    const result = await app.lambdaHandler()
    expect(result).toBe('test')
})
