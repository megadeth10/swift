import UIKit

var greeting = "Hello, playground"

class TestClass {
    private var name: String
    var text: String {
        get {
            return name
        }
        set {
            self.name = newValue
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    func displayInfo() {
        print("FirstClass name: \(name)")
    }
}

let testClass = TestClass(name: "John")
testClass.displayInfo()

dump(testClass)

let sum : Int

sum = 3

print(sum)

//  data 타입
var aChar: Character = "🇰🇷"
print(aChar)

//var someAny: Any = 100 tClass(name: "John")

//print(sommObject)

/*
 Collection
 Array, Dictionary, Set
*/
print("############## Collection ##############")
var array: [Int] = [1, 2, 3, 4, 5]
var intArray : Array<Int> = Array<Int>()

intArray.append(6)

print(intArray)

var someDictionary: [String: Int] = [:]
var someDictionary2: Dictionary<String , Int> = [:]
someDictionary["key"] = 100
someDictionary["key2"] = 200

print(someDictionary)

someDictionary.removeValue(forKey: "key")

print(someDictionary)

/*
 함수
 */
print("############## 함수 ##############")
func sum(_ a: Float, _ b: Float) -> Float {
    return a + b
}
func sum(first a: Int, second b: Int) -> Int {
    return a + b
}
print(sum(first: sum(first: 1, second: 2), second:sum(first:3, second:4)))

/*
 데이터 타입 함수
 */
print("############## 데이터 타입 함수 ##############")
var sumVariable : (Int, Int) -> Int = sum(first: second:)

print("\(sumVariable(1, 2))")

/*
 흐름 제어
 switch, for, do-while,
 */
print("############## 흐름 제어 ##############")
var count = 100
switch count {
    case 0:
        print("swtich 0")
    case 1..<100:
        print("100미만")
    case 100:
        print("100")
    case 101...Int.max:
        print("100이상")
    default:
        print("무한대")
}

let array2 : [Int] = [1, 2, 3, 4, 5]
let dic2 : [String: Int] = ["key": 100, "key2": 200]

for i in array2 {
    print(i)
}

for (key, value) in dic2 {
    print("\(key) : \(value)")
}

var i = 0
while i < 10 {
    print(i)
    i+=1
}

var j = 0

repeat {
    print("repeat")
    j+=1
} while j < 10

/*
 옵셔널
 */
print("############## 옵셔널 ##############")
var optionalName: String? = nil
var optionalName2: String! = nil


print(optionalName ?? "default")

/*
구조체
 */
print("############## struct ##############")
struct Profile {
    var name: String
    let college: String = "Korea University"
    
    func printProfile() {
        print("\(name) : \(college)")
    }
    
    static func printManual() {
        print("학생이름과 학교명을 출력 하는 구조체")
    }
}

Profile.printManual()

let profile = Profile(name: "김태호")

profile.printProfile()

//profile.name = "김태호2" 오류 // let은 변수는 멤버 변수든 불가능
var profile2 = Profile(name: "김태호2")
profile2.name = "김태호3"
profile2.printProfile()

print("############## class ##############")
class FirstClass {
    var name: String
    let college: String = "Korea University"
    
    init(name: String) {
        self.name = name
    }
    
    func printProfile() {
        print("\(name) : \(college)")
    }
    
    static func printManual() {
        print("오버라이딩 불가 메소드")
    }
    func printManual2() {
        print("오버라이딩 가능 메소드")
    }
}

class SecondClass : FirstClass {
    override func printManual2() {
        print("오버라이딩 가능 메소드2222")
    }
}

var firstClass = FirstClass(name: "김태호")
firstClass.name = "김태호3"
firstClass.printProfile()
firstClass.printManual2()
FirstClass.printManual()
let secondClass = SecondClass(name: "김태호2")
secondClass.name = "김태호4" // class var let과 관계없이  가능
secondClass.printProfile()
secondClass.printManual2()


