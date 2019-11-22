import UIKit

//[ 과제 - 알고리즘 ]
//1. 입력받은 숫자의 모든 자리 숫자 합계를 출력하기
//e.g.  123 -> 6 ,  5678 -> 26

func sum(num: Int) -> Int {
    var sum = 0
    var num = num
    while(num > 0) {
        sum += num % 10
        num /= 10
    }
    return sum
}
sum(num: 5678)


//2. 하샤드 수 구하기
//- 하샤드 수 : 자연수 N의 각 자릿수 숫자의 합을 구한 뒤, 그 합한 숫자로 자기 자신이 나누어 떨어지는 수
//e.g. 18의 자릿수 합은 1 + 8 = 9 이고, 18은 9로 나누어 떨어지므로 하샤드 수.

func haShadNumber(num: Int) -> Bool {
    var sum = 0
    var value = num
    while(value > 0) {
        sum += value % 10
        value /= 10
    }
    return num % sum == 0
}
haShadNumber(num: 42)
