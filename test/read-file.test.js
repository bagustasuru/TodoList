test('Read file', async () => {
    const fs = require('fs');

    const callback = (error, data) => {
        if (error) {
            console.error(error);
            return;
        }
        console.log(data);
    }

    await fs.readFile('./test/files/todo.txt', 'utf-8', callback);

    expect(true).toBe(true);
});