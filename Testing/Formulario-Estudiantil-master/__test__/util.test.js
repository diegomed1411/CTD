const { validateInput, generateText } = require("../util.js");

test('probar ingreso de student menor de edad', ()=>{
    expect(generateText("Diego", 15, 98)).toBe("Edad ingresada no válida. Por favor intentá nuevamente.");
})

test('probar ingreso de student mayor a 65', ()=>{
    expect(generateText("Diego", 70, 98)).toBe("No pudimos registrar a: Diego. Por favor contactá a soporte@dh.com para más información.");
})



test("Edad correcta", () => {
    expect(validateInput("choclo", true)).toBeTruthy();
  });