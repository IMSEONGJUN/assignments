import UIKit
import Foundation

//1. 다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
//   구현 내용은 자유롭게
//
// ** 강아지 (Dog)
// - 속성: 이름, 나이, 몸무게, 견종
// - 행위: 짖기, 먹기
class Dog {
    let name: String
    let age: Int
    let weight: Int
    let breed: String
    
    init(name: String, age: Int, weight: Int, breed: String) {
        self.name = name
        self.age = age
        self.weight = weight
        self.breed = breed
    }
    
    func bark() {
        print("멍멍")
    }
    
    func eat() {
        print("챱챱")
    }
}


// ** 학생 (Student)
// - 속성: 이름, 나이, 학교명, 학년
// - 행위: 공부하기, 먹기, 잠자기

class Student {
    let name: String
    let age: Int
    let nameOfSchool: String
    let grade: Int
    
    init(name: String, age: Int, nos: String, grade: Int) {
        self.name = name
        self.age = age
        self.nameOfSchool = nos
        self.grade = grade
    }
    
    func doStudy() {
        print("공부중")
    }
    
    func eat() {
        print("먹는중")
    }
    
    func sleep() {
        print("잠자는중")
    }
}


// ** 아이폰(IPhone)
// - 속성: 기기명, 가격, faceID 기능 여부(Bool)
// - 행위: 전화 걸기, 문자 전송
class IPhone {
    let name: String
    let price: Int
    let isFaceIdWork: Bool
    
    init(name: String, price: Int, fiw: Bool) {
        self.name = name
        self.price = price
        self.isFaceIdWork = fiw
    }
    
    func call(to name: String) {
        print("\(name)에게 전화를 겁니다")
    }
    
    func sendText(to name: String) {
        print("\(name)에게 문자를 보냅니다")
    }

}


// ** 커피(Coffee)
// - 속성: 이름, 가격, 원두 원산지
class Coffee {

    let name: String
    let price: Int
    let origin: String
    
    init(name: String, price: Int, origin: String) {
        self.name = name
        self.price = price
        self.origin = origin
    }
    
}


//2. 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기
//
// ** 계산기 (Calculator)
// - 속성: 현재 값
// - 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화

class Calculator {
    
    var value: Double = 0
    
    func add(_ num: Double) -> Double {
        self.value += num
        return self.value
    }
    
    func subtract(_ num: Double) -> Double {
        self.value -= num
        return self.value
    }
    
    func divide(_ num: Double) -> Double {
        self.value /= num
        return self.value
    }
    
    func multiply(_ num: Double) -> Double {
        self.value *= num
        return self.value
    }
    
    func reset() {
        self.value = 0
    }
}

 let calculator = Calculator() // 객체생성

 calculator.value  // 0
 calculator.add(10)    // 10
 calculator.add(5)     // 15

 calculator.subtract(9)  // 6
 calculator.subtract(10) // -4

 calculator.multiply(4)   // -16
 calculator.multiply(-10) // 160

 calculator.divide(10)   // 16
 calculator.reset()      // 0





//3. 첨부된 그림을 참고하여 각 도형별 클래스를 만들고 각각의 넓이, 둘레, 부피를 구하는 프로퍼티와 메서드 구현하기


class Square {
    let s = 5
    
    func getArea() ->Int {
        return s * s
    }
    
    func getPerimeter() -> Int {
        return s * 4
    }
}

class Rectangle {
    let w = 3
    let l = 5
    
    func getArea() ->Int {
        return w * l
    }
    
    func getPerimeter() -> Int {
        return (2*w) + (2*l)
    }
}

class Circle {
    let r = 5
    
    func getArea() -> Double {
        return 3.14 * Double((self.r * self.r))
    }
    
    func getCircumference() -> Double {
        return 2 * 3.14 * Double(self.r)
    }
}

class Triangle {
    let h = 5
    let b = 10
    
    func getArea() ->Double {
        return Double(self.h * self.b) / Double(2)
    }
}

class Cube {
    let s = 5
    
    func getVolume() -> Int {
        return s*s*s
    }
}

class RectangularSoild {
    let w = 3
    let l = 7
    let h = 2
    
    func getVolume() -> Int {
        return w * l * h
    }
}

class CircularCylinder {
    let r = 3
    let h = 9
    
    func getVolume() -> Double {
        return 3.14 * Double(self.r*self.r) * Double(self.h)
    }
}

class Sphere {
    let r = 3
    
    func getVolume() -> Double {
        (4 * 3.14 * pow(Double(self.r), Double(2))) / 3
    }
}

class Cone {
    let h = 10
    let r = 2
    
    func getVolume() -> Double {
        return (3.14 * pow(Double(self.r), Double(2)) * Double(h)) / 3
    }
}
