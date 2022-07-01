test('test function sum', () => {
    function test(){
        return 1 + 1
    };

    const result = test();
  
    expect(result).toBe(2);
})