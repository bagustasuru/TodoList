describe('Test array partition', () => {

    const _ = require('lodash');

    const myOddEventArray = _.partition([1, 2, 3, 4, 5, 6], (n) => n % 2);

    const expected = [[1, 3, 5], [2, 4, 6]];

    it('Match', () => {
        expect(myOddEventArray).toEqual(expect.arrayContaining(expected));
    });

})