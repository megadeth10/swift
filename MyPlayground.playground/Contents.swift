import UIKit

var greeting = "Hello, playground"


class FirstClass {
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

let firstClass = FirstClass(name: "John")
firstClass.displayInfo()

dump(firstClass)

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
var sumVariable : (Int, Int) -> Int = sum(first: second:)

print("\(sumVariable(1, 2))")
