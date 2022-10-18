import fs from 'fs';

const reading = fs.createReadStream('./input.txt', {
    highWaterMark: 15
});

const writing = fs.createWriteStream('./output.txt');

reading.on('readable', () => {
    try {
        writing.write(`${reading.read()}\n`);
        // process.stdout.write(`[${reading.read()}]`);
    } catch (error) {
        // Some error
    }
});

reading.on('end', () => {
    writing.end('===============');
    console.log('Done');
})