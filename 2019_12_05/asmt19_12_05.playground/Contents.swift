import UIKit

var str = "Hello, playground"


//******************
//** Type Casting **
//******************
//[ 과제 ]
//1.
func addTwoValues(a: Int, b: Int) -> Int {
  return a + b
}
let task1: Any = addTwoValues(a: 2, b: 3)
//위와 같이 정의된 변수 task1이 있을 때 다음의 더하기 연산이 제대로 동작하도록 할 것

func convertType(type: Any) -> Int?{
    if let t1 = type as? Int {
        return t1
    }
    return nil
}
convertType(type:task1)! + convertType(type:task1)!





//[ 도전 과제 ]
//1.
let task2: Any = addTwoValues(a: 2, b: 2)
//과제 1번에 이어 이번에는 위와 같이 정의된 task2 변수에 대해
//두 변수의 더하기 연산이 제대로 동작하도록 할 것
//(addTwoValues의 각 파라미터에는 원하는 값 입력)
(task2 as! Int) + (task2 as! Int)


//2.
class Car {}
let values: [Any] = [
  0,
  0.0,
  (2.0, Double.pi),
  Car(),
  { (str: String) -> Int in str.count }
]

//위 values 변수의 각 값을 switch 문과 타입캐스팅을 이용해 출력하기
for value in values {
  switch value {
    case (let x) where x is Int:
        print(x)
    case (let x) where x is Double:
        print(x)
    case (let x) where x is (Double, Double):
        print(x)
    case (let x) where x is Car:
        print("\(type(of:x))()")
    case (let x) where x is (String) -> Int:
        print((x as! (String) -> Int)("swift"))
  default:
    break
    
    }
}
//*****************
//** Initializer **
//*****************
//[ 과제 ]
//1. 생성자 구현
//- Vehicle 클래스에 지정 이니셜라이져(Designated Initializer) 추가
//- Car 클래스에 modelYear 또는 numberOfSeat가 0 이하일 때 nil을 반환하는 Failable Initializer 추가
//- Bus 클래스에 지정 이니셜라이져를 추가하고, maxSpeed를 100으로 기본 할당해주는 편의 이니셜라이져 추가
class Vehicle {
  let name: String
  let maxSpeed: Int
    
    init() {
        self.name = "im"
        self.maxSpeed = 200
    }
    
    init(name: String, maxSpeed: Int) {
        self.name = name
        self.maxSpeed = maxSpeed
    }
}
class Car2: Vehicle {
  var modelYear: Int
  var numberOfSeats: Int
    
    init?(modelYear: Int, numberOfSeats: Int) {
        guard modelYear > 0 || numberOfSeats > 0 else { return nil}
        
        self.modelYear = 2019
        self.numberOfSeats = 5
        super.init()
    }
}
class Bus: Vehicle {
  let isDoubleDecker: Bool
  
    init(isDoubleDecker: Bool) {
        self.isDoubleDecker = isDoubleDecker
        super.init()
    }
    
    init(isDoubleDecker: Bool, name: String, maxSpeed:Int) {
        self.isDoubleDecker = isDoubleDecker
        super.init(name: name, maxSpeed: maxSpeed)
    }
    
    convenience init(name: String, isDoubleDecker:Bool) {
        self.init(isDoubleDecker:isDoubleDecker, name: name, maxSpeed: 100)
    }
}
