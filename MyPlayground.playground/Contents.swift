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
    
    static func staticFunction() {
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
FirstClass.staticFunction()
let secondClass = SecondClass(name: "김태호2")
secondClass.name = "김태호4" // class var let과 관계없이  가능
secondClass.printProfile()
secondClass.printManual2()

/*
열거형
*/
print("############## 열거형 ##############")
enum Days {
    case mon
    case tue
    case wed
    case thu
    case fri
    case sat
    case sun
}

var days: Days = .mon

switch days {
    case .mon:
    print("월요일")
case .tue:
    print("화요일")
case .wed:
    print("수요일")
case .thu:
    print("목요일")
case .fri:
    print("금요일")
default:
    print("금요일")
}

enum Days2: Int {
    case mon = 1
    case tue = 2
    case wed = 3
    case thu = 4
    case fri = 5
    case sat = 6
    case sun = 7
}

var days2: Days2 = .mon

print("days2.rawValue \(days2.rawValue)")

var days3 : Days2? = Days2(rawValue: 0)

print("days3.rawValue \(days3?.rawValue ?? -1)")

enum Days3: Int {
    case mon = 1
    case tue = 2
    case wed = 3
    case thu = 4
    case fri = 5
    case sat = 6
    case sun = 7
    
    func printMessage() {
        switch self {
        case .mon:
            print("월요일")
        case .tue:
            print("화요일")
        case .wed:
            print("수요일")
        case .thu:
            print("목요일")
        default:
            print("그외")
        }
    }
}

var days4 : Days3 = Days3.fri

days4.printMessage()
/*
 Closer
 */
print("############## 클로저 ##############")

func addFunction(_ a: Int, _ b: Int) -> Int {
    return a+b
}

print("add Function \(addFunction(1,2))")

func operation(_ a: Int, _ b: Int, _ operation: (Int, Int) -> Int) -> Int {
    return operation(a,b)
}

let add = { (a: Int, b: Int) -> Int in
    return a+b
}

let minus = { (a: Int, b: Int) in
    return a-b
}

print("add Function \(operation(1,2,add))")
print("minus Function \(operation(1,2,minus))")

/*
 프로퍼티
 */
print("############## 프로퍼티 ##############")

struct TestProperty {
    private var _name: String
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue.uppercased()
        }
    }
    
    init(_ name: String) {
        _name = name
        self.name = name
    }
}

var testProperty = TestProperty("test")
print("testProperty \(testProperty.name)")
testProperty.name = "hello"
print("testProperty \(testProperty.name)")

struct TestProperty2 {
    private var _name: String = "" {
        // 프로퍼티 감시자
        willSet {
            print("willSet newValue: \(newValue) _name: \(_name)")
        }
        didSet {
            print("didSet oldValue: \(oldValue) _name: \(_name)")
        }
    }
    var name: String {
        get {
            return _name
        }
        set {
            _name = newValue.uppercased()
        }
    }
    
    init(_ name: String) {
        _name = name
        self.name = name
    }
}

var testProperty2 = TestProperty2("test")
print("testProperty2 \(testProperty2.name)")
testProperty2.name = "hello"
print("testProperty2 \(testProperty2.name)")


/*
 상속
 */
print("############## 상속 ##############")
class Parent {
    var name: String = "parent"
     
     func printName() {
         print("name: \(name)")
     }
     
     static func printStaticName() {
         print("staticName:")
     }
     
     final func finalPrintName() {
         print("finalPrintName: \(name)")
     }
     
     class func classPrintName() {
         print("classPrintName:")
     }
}

class Child: Parent {
    
    override func printName() {
        print("Child name: \(name)")
    }
    
    // final은 재정의 불가
//    override func finalPrintName() {
//        print("finalPrintName: \(name)")
//    }
    
    override class func classPrintName() {
        print("Child classPrintName: ")
    }
}

var person: Parent = Parent()
person.printName()
person.finalPrintName()
Parent.classPrintName()
Parent.printStaticName()

var child: Child = Child()
child.printName()
child.finalPrintName()
Child.classPrintName()
Child.printStaticName()

/*
 인스턴스 생성 소멸
 */
print("############## 인스턴스 생성 소멸 ##############")

class ParentB {
    var name: String = "parent"
    // 느낌 표는 Kotlin의 lateinit과 동일함.
    var parent: Parent!
    // 생성자
    init() {
        print("ParentB init")
    }
    // 중복 생성자
    convenience init(name: String) {
        self.init()
        print("convenience init: \(name)")
    }
    // 실패 가능한 이니셜 라이져
    convenience init?(_ name: String) {
        if name.count < 2 { // 실패 가능한 조건 추가
            return nil
        }
        self.init(name)
    }
    
    // 파괴자???(소멸자)
    deinit {
        print("ParentB deinit")
    }
    
    func goOut() {
        print("ParentB goOut\(self.name) parent: \(self.parent.name)")
    }
}
let personB: ParentB = ParentB()
// 프로퍼티에 !로 표시하면 lateInit과 같아 값이 없으면 오류가 발생해서 아래 코드는 사용이 불가능하다.!!!!
//personB.goOut()
personB.parent = Parent()
personB.goOut()

//let personC: ParentB? = ParentB("ㅁ")
//print("personC: \(String(describing: personC ?? nil))")

//func deInitFUnction() {
//    let personD: ParentB? = ParentB("aa")
//    print("persongD: \(String(describing: personD ?? nil))")
//}
//deInitFUnction()
print("end")
