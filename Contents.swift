import Foundation

/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores
*/

print("- PUNTO 2 Y 3")

/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/

precedencegroup PowerPrecedence {
 higherThan: MultiplicationPrecedence }

infix operator ++ : PowerPrecedence

func ++ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

let i2 = 3 ++ 6
print("Resultado: ")
print((3 ++ 6))

//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor

var coleccion = [2,5,3,4]

prefix operator |>

prefix func |>(sort:String)
{
    let ordenados = coleccion.sorted(by: <)
    print(ordenados)
}

print(coleccion)

|>"sort"

print("- PUNTO 4")

/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/

let cantidades = [2,3,4,5]

class Cantidad
{
    var valores: [Int]
    init(v:[Int])
     {
     self.valores = v
    }
   
    subscript(idx:Int) -> Int
    {
        get
        {
            return valores [idx]
        }

        set(nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

let v1 = Cantidad(v: cantidades)

v1[0] = 1
v1[2] = 1

print(cantidades)
print(v1[0])
print(v1[2])

print(v1.valores)

//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps


/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
