describe('Even driven', () => {
    const { EventEmitter } = require('events');

    test('Listener & emit', () => {
        const myEventEmiter = new EventEmitter();
        const expected = 'Happy birth day OKY'
    
        const birthDayEventListener = ({ name }) => {
            return `Happy birth day ${name}`
        }
    
        myEventEmiter.on('birthday', birthDayEventListener);
    
        const emit = myEventEmiter.emit('birthday', { name: 'OKY' });
        
        expect(emit).toBe(true);
    });
});