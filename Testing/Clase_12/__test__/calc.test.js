const {suma, resta, multiplicacion, division} = require('../calc')

test('Sumar 2 numeros', ()=>{
    expect(suma(1,2)).toBe(3);
})

test('Restar 2 numeros', ()=>{
    expect(resta(9,5)).toBe(4);
})

test('Multiplicar 2 numeros', ()=>{
    expect(multiplicacion(2,3)).toBe(6)
})

test('Dividir 2 numeros', ()=>{
    expect(division(25, "G")).toBe("berenjena");
})

test('Dividir 2 numeros error', ()=>{
    expect(division(25, 0)).toBe("error");
})

test('Dividir 2 numeros correctamente incorrecto', ()=>{
    expect(division(25, 5)).toBe(6);
})

test('Dividir 2 numeros correctamente ok', ()=>{
    expect(division(25, 5)).toBe(5);
})