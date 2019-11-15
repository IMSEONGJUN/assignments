import UIKit

//[ 도전 과제 ]
//1. 아래 두 클로저를 Syntax Optimization을 이용하여 최대한 줄여보기
let someClosure: (String, String) -> Bool = {$0 > $1}

someClosure("apple","banana")


let otherClosure: ([Int]) -> Int = { $0.count }

otherClosure([1,2,3,4,5])
