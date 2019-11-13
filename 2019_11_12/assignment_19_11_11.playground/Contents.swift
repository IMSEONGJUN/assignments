import UIKit


//[ 과제 ]
//- 두 개의 자연수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 정수로 반환하는 함수
//  (1과 5 입력 시 15,  29와 30 입력 시 2930,  6과 100 입력 시 6100)

func dosome(a: Int, b: Int) -> Int {
    let str = String(a) + String(b)
    let sum = Int(str)!
    return sum
}
dosome(a: 12, b: 34)


//- 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
func dosome2(a:String, b:String) -> Bool {
    return a == b
}
dosome2(a: "12", b: "12")


//- 자연수를 입력받아 그 수의 약수를 모두 출력하는 함수
func dosome3(a: Int) {
    for i in 1...a {
        if a % i == 0 {
            print(i, terminator: " ")
        }
    }
    print("\n")
}
dosome3(a: 10)


//- 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
func dosome3() {
    let num = 3
    var offset3 = 1
    let num2 = 5
    var offset5 = 1
    
    var tempMultipleValue = 0 // 3과 5의 배수들이 임시로 들어갈 변수
    
    var a = Set<Int>() // 3의 배수 집합
    var b = Set<Int>() // 5의 배수 집합
    
    while ( true ) {
        
        tempMultipleValue = num * offset3
        offset3 += 1
        if tempMultipleValue > 100 {
            tempMultipleValue = 0
            break
        }
        a.insert(tempMultipleValue)
        
    }
    
    while ( true ) {
      
      tempMultipleValue = num2 * offset5
      offset5 += 1
      if tempMultipleValue > 100 {
          break
      }
      b.insert(tempMultipleValue)
      
    }
    
    let c = a.intersection(b).sorted()
    for i in c {
        print(i, terminator: "\n")
    }
    
}
dosome3()

//[ 도전 과제 ]
//- 2 이상의 자연수를 입력받아, 소수인지 아닌지를 판별하는 함수
func dosome4(a: Int) -> Bool {
    var count = 0
    for i in 1...a {
        if a % i == 0 {
            count += 1
        }
    }
    if count == 2 {
        return true
    }
    else {
        return false
    }
}
dosome4(a: 8)


//- 자연수 하나를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수
//  참고로 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열
//  e.g.  0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89 ....
//  함수 호출 시 입력받은 숫자가 4인 경우 피보나치 수열의 4번째 위치인 2 출력
func dosome5(num : Int) -> Int {
    var a = 0
    var b = 1
    var value = 0
    
    if num == 1 {
        return 0
    }
    if num == 2 {
        return 1
    }
    
    for _ in 0..<num-2 {
        value = a + b
        a = b
        b = value
    }
    return value
}
dosome5(num: 8)


//- 정수를 입력받아 윤년(2월 29일이 있는 해)인지 아닌지 판단하는 함수
//  (공식 - 매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
//  ex) 윤년O 예시 - 160, 204, 400, 1996, 2000, 2800
//      윤년X 예시 - 200, 300, 500, 600, 1900, 2100 (edited)
func dosome6(num : Int) -> Bool {
    var count = Bool()
    if num % 4 == 0  {
        count = true
    }
    if num % 100 == 0 {
        count = false
    }
    if num % 400 == 0 {
        count = true
    }
    return count
}
dosome6(num: 2804)
