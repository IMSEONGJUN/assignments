import UIKit

//[ 과제 ]
//1. 옵셔널 타입의 문자열 파라미터 3개를 입력받은 뒤, 옵셔널을 추출하여 Unwrapped 된 하나의 문자열로 합쳐서 반환하는 함수
func combineString(str1: String?, str2: String?, str3: String?) -> String {
    var str = ""
    if let a = str1 {
        str += a
    }
    if let b = str2 {
        str += b
    }
    if let c = str3 {
        str += c
    }
    
    return str
}
combineString(str1: "AB", str2: nil, str3: "EF")

//// 입력 예시 및 결과
//combineString1(str1: "AB", str2: "CD", str3: "EF")   // "ABCDEF"
//combineString1(str1: "AB", str2: nil, str3: "EF")    // "ABEF"


//2. 사칙연산(+, -, *, /)을 가진 enum 타입 Arithmetic과 2개의 자연수를 입력 파라미터로 받아 (파라미터 총 3개) 해당 연산의 결과를 반환하는 함수 구현


enum Arithmetic {
  case addition, subtraction, multiplication, division
}
func dosome(a: Int, b: Int, en: Arithmetic) -> Int {
    let operand = en.self
    
    switch operand {
    case .addition :
        return a + b
    case .subtraction :
        return a - b
    case .multiplication :
        return a * b
    case .division :
        return a / b
    }
    
}
dosome(a: 10, b: 2, en: .multiplication)

//[ 도전 과제 ]
//1. celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 enum 타입 Temperature 를 정의
//각 케이스에는 Double 타입의 Associated Value 를 받도록 함
//추가로 Temperature 타입 내부에 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현
//섭씨 = (화씨 - 32) * 5 / 9
//섭씨 = 켈빈 + 273
//
//enum Temperature {
//  // 코드
//}

enum Temperature {
    case celcius(Double)
    case fahrenheit(Double)
    case kelvin(Double)
    
    func toCelcius() -> Double {
        switch self {
        case .celcius(let x):
            return x
        case .fahrenheit(let x):
            return (x - 32) * 5 / 9
        case .kelvin(let x):
            return x + 273
        }
    }
}

var temp = Temperature.fahrenheit(93.2)
var transCelcius = temp.toCelcius()





//2. 다음 ArithmeticExpression 의 각 케이스별로 연산을 수행하고 그 값을 반환하는 evaluate 함수 구현

enum ArithmeticExpression {
  case number(Int)
  indirect case addition(ArithmeticExpression, ArithmeticExpression)
  indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

// MARK: - 재귀호출로 구현
func evaluate(_ expression: ArithmeticExpression) -> Int {
 
    switch expression {
    case .number(let x):
        return x
    case .addition(let x, let y):
        return evaluate(x) + evaluate(y)
    case .multiplication(let x, let y):
        return evaluate(x) * evaluate(y)
    }
    
}
evaluate(five)    // 결과 : 5
evaluate(sum)     // 결과 : 9
evaluate(product) // 결과 : 18


// MARK: - 단계적으로 파고들어가면서 구현. 코드가 약간 복잡해진다.
func evaluate2(_ expression: ArithmeticExpression) -> Int {
    var sum = 0
    var num = 0
    
    switch expression {
    case .number(let x):
        return x
    case .addition(let x, let y):
        switch (x, y) {
        case (.number(let a), .number(let b)):
            return a + b
        default:
            break
        }
    case .multiplication(let x, let y):
        switch x {
        case .addition(let x, let y):
            switch (x, y) {
            case (.number(let a), .number(let b)):
                sum = a + b
            default:
                break
            }
        default:
        break
        }
        switch y {
        case .number(let x):
            num = x
        default:
            break
        }
    }
    
    
    return Int(sum * num)
}
evaluate2(five)    // 결과 : 5
evaluate2(sum)     // 결과 : 9
evaluate2(product) // 결과 : 18
