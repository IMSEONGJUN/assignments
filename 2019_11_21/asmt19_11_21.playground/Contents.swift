import UIKit

//[ 과제 - 알고리즘 ]
//1. 정수 하나를 입력받은 뒤, 해당 숫자와 숫자 1사이에 있는 모든 정수의 합계 구하기
//e.g.  5 -> 1 + 2 + 3 + 4 + 5 = 15,   -2 -> -2 + -1 + 0 + 1 = -2
func sum(num: Int) -> Int {
    var sum = 0
    if num > 0 {
        for i in 1...num{
            sum += i
        }
    }
    else {
        for i in num...1 {
            sum += i
        }
    }
    return sum
}

sum(num: -2)
sum(num: 10)


//2. 숫자를 입력받아 1부터 해당 숫자까지 출력하되, 3, 6, 9가 하나라도 포함되어 있는 숫자는 *로 표시
//e.g.  1, 2, *, 4, 5, *, 7, 8, *, 10, 11, 12, *, 14, 15, * ...
func printInOrder(num: Int) {
    for i in 1...num{
        if String(i).contains(where: {$0 == "3" || $0 == "6" || $0 == "9"}) {
            print("*", terminator:" ")
        }
        else {
            print(i, terminator:" ")
        }
    }
}
printInOrder(num: 20)

//3. 2개의 정수를 입력했을 때 그에 대한 최소공배수와 최대공약수 구하기
// e.g.  Input : 6, 9   ->  Output : 18, 3
// 최대공약수
// 1) 두 수 중 큰 수를 작은 수로 나눈 나머지가 0이면 최대 공약수
// 2) 나머지가 0이 아니면, 큰 수에 작은 수를 넣고 작은 수에 나머지 값을 넣은 뒤 1) 반복
// 최소 공배수
// - 주어진 두 수의 곱을 최대공약수로 나누면 최소공배수

func getValue(a:(Int,Int)) -> (Int,Int){
    var gcd = 0
    var lcm = 0
    var bigger = a.0
    var smaller = a.1
    var tup: (Int,Int)
    
    var rest = 0
    while(true) {
        rest = bigger % smaller
        if rest == 0 { break }
        bigger = smaller
        smaller = rest
    }
     
     gcd = smaller
     lcm = (a.0 * a.1) / gcd
     tup = (lcm, gcd)
    return tup
}

func minMax(a: (Int, Int)) -> (Int, Int) {
    guard a.0 != a.1 else {
        return (a.0,a.1)
    }
    var tup: (Int,Int)
    
    if a.0 > a.1 {
        tup = getValue(a: (a.0,a.1))
        return tup
    }
    else {
        tup = getValue(a: (a.1,a.0))
        return tup
    }
}

let value = minMax(a: (6,9))
print(value)
