func more(_ number1: Int, _ number2: Int) -> Bool {
   return number1 > number2
}
func less(_ number1: Int, _ number2: Int) -> Bool {
   return number1 < number2
}
func counterName(_ name1: String, _ name2: String) -> Bool {
   return name1.count < name2.count
}
func find(_ array: Dictionary<Int, String>, _ key: Int) {
    print(key, " ", array[key]!)
}
func check(_ arrayInt: inout [Int], _ arrayString: inout [String]) -> Void {
    if arrayInt.isEmpty {
        arrayInt.append(16)
        print(arrayInt)
    }
    if arrayString.isEmpty {
        arrayString.append("Массив был пуст")
        print(arrayString)
    }
}


var array : [Int] = []
for _ in 0...30{
    array.append(Int.random(in: 1..<10000))
}
print("Массив" , array)
var sortArrayDESC = array.sorted(by: more)
print("Массив по убыванию", sortArrayDESC)
var sortArrayASC = array.sorted(by: less)
print("Массив по по возрастанию", sortArrayASC)
var arrayName : [String] = []
var name = String()
for _ in 0...5{
    name = readLine()!
    arrayName.append(name)
}
var sortArrayName = arrayName.sorted(by: counterName)
print("Отсортированный массив имен", sortArrayName)
var names: Dictionary<Int, String> = [:]
for amount in 0...sortArrayName.count-1{
    names.updateValue(sortArrayName[amount], forKey: sortArrayName[amount].count)
}
print(names)
find(names, 3)
var arrayString : [String] = []
check(&array, &arrayString)