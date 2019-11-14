import UIKit

//[ 실습 문제 ]
//<1>
//[보기] 철수 - apple, 영희 - banana, 진수 - grape, 미희 - strawberry
//위 보기처럼 학생과 좋아하는 과일을 매칭시킨 정보를 Dictionary 형태로 만들고
//스펠링에 'e'가 들어간 과일을 모두 찾아 그것과 매칭되는 학생 이름을 배열로 반환하는 함수
func dosome() -> [String] {
    let dict = ["철수":"apple", "영희":"banana", "진수":"grape", "미희":"strawberry"]
    var arrName = [String]()
    for dicts in dict {
        for i in dicts.value {
            if i == "e" {
                arrName.append(dicts.key)
            }
        }
    }

    return arrName
}
dosome()

//<2>
//임의의 정수 배열을 입력받았을 때 홀수는 배열의 앞부분, 짝수는 배열의 뒷부분에 위치하도록 구성된 새로운 배열을 반환하는 함수
//ex) [2, 8, 7, 1, 4, 3] -> [7, 1, 3, 2, 8, 4]
func dosome2(a: Int...) ->[Int] {
    
    var newArr = [Int]()
    var b = [Int]()
    for i in a {
        if(i % 2 != 0){
            newArr.append(i)
        }
    }
    b = a.filter(){$0 % 2 == 0}
    newArr += b
    return newArr
}

dosome2(a: 2, 8, 7, 1, 4, 3)




//<3>
//0 ~ 9 사이의 숫자가 들어있는 배열에서 각 숫자가 몇 개씩 있는지 출력하는 함수
//입력 : [1, 3, 3, 3, 8]
//결과 : "숫자 1 : 1개, 숫자 3 : 3개, 숫자 8 : 1개"

func dosome3() {
    let arr = [1,3,3,3,8]

    var dic : [Int : Int] = [0 : 0, 1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0, 6 : 0, 7 : 0, 8 : 0, 9 : 0]
    
    for i in arr {
        for j in dic.keys {
            if i == j {
                dic[j]! += 1
            }
        }
    }
    
    for i in dic {
        if i.value != 0
        {
            print("숫자 \(i.key) : \(i.value)개," , terminator: " ")
        }
    }
}
dosome3()


//[ 과제 ]
//- 자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
//  ex) 123 -> 321 , 10293 -> 39201
func reverseFunc(a: Int) -> Int {
    var str = ""
    var a = a
    var value = 0
    
    while( a > 0 ) {
       value = a % 10
       str += String(value)
       a = a / 10
    }
    return Int(str)!
}

reverseFunc(a: 123)



//- 100 ~ 900 사이의 숫자 중 하나를 입력받아 각 자리의 숫자가 모두 다른지 여부를 반환하는 함수
//  ex) true - 123, 310, 369   /  false - 100, 222, 770
func noDuplicate(a: Int) -> Bool {
    let str = String(a)
    var uni = Set<Character>()
    var count = 0
    
    for i in str {
        count += 1
        uni.insert(i)
    }
    
    return uni.count == count
}

noDuplicate(a: 223)



//[ 도전 과제 ]
//- 주어진 문자 배열에서 중복되지 않는 문자만을 뽑아내 배열로 반환해주는 함수
//  ex) ["a", "b", "c", "a", "e", "d", "c"]  ->  ["b", "e" ,"d"]
func uniqueStr() -> [String] {

    let alpha = ["a", "b", "c", "a", "e", "d", "c"]
    var uniqueArr = [String]()
    
    for i in alpha {
        if alpha.firstIndex(of: i) == alpha.lastIndex(of: i) {
            uniqueArr.append(i)
        }
    }
    return uniqueArr
}
uniqueStr()




//- 별도로 전달한 식육목 모식도 라는 자료를 보고 Dictionary 자료형에 맞도록 중첩형태로 데이터를 저장하고
//  + 해당 변수에서 표범 하위 분류를 찾아 사자와 호랑이를 출력하기

var dic = ["식육목":
                 ["개과":["개":["자칼", "늑대", "북미산 이리"],
                         "여우":["아메리카 여우", "유럽 여우"]],
                                                       
                                                
                  "고양이과":["고양이":["고양이", "살쾡이"],
                            "표범" :["사자", "호랑이" ]]
                                                    ]
                                                    ]

if let leo = dic["식육목"]?["고양이과"]?["표범"] {
    print(leo)
}



// Tips : - 하위 카테고리부터 만들기 시작한다
//       - 종류가 같은 것이 있을때는 대괄호[]로 묶고 콤마,로 구분해준다.
//       - 상위 카테고리로 콜론:으로 연결한다
//       - 그리고 다시 동일 카테고리에 같은 종류들이 있으면 다시 []로 묶고 ,로 구분해준다
//       - 동일 카테고리에 1개 항목만 있으면 그냥 []로 묶는다
//       - 다시 상위 카테고리와 :으로 연결한다
//       - 더이상의 상위 카테고리가 없으면 []묶고 마무리한다
