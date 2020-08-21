import Swift;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#

var emptyArray: [Int] = []; //Int typed empty array

var array: [String] = ["Eggs", "Milk"] //String typed array with 2 items
print("\(array.count)"); //Prints out: 2

//Append item to an array
array.append("Flour"); //Append Flour to array
print("\(array)") //Prints out: ["Eggs", "Milk", "Flour"] 


//Access array items by index
var firstItem:String = array[0];
print("\(firstItem)") //Prints out: Eggs


//Change value by accessing item by index
array[1] = "Sugar";
print("\(array)") //Prints out: ["Eggs", "Sugar", "Flour"] 


//Change items value with intervall
array[1...2] = ["Banana", "Apple"];
print("\(array)") //Prints out: ["Eggs", "Banana", "Apple"]

//Insert item at index
array.insert("Maple Syrup", at: 2);
print("\(array)") //Prints out: ["Eggs", "Banana", "Maple Syrup", "Apple"]

//Remove item at index
array.remove(at: 2);
print("\(array)") //Prints out: ["Eggs", "Banana", "Apple"]

//Removing last item from array
array.removeLast();
print("\(array)") //Prints out: ["Eggs", "Banana"]

//Iterating over an array
//for-in
//Prints out: 
//Eggs
//Banana
for item in array {
    print("\(item)")
}

//enumerated() loop
//Prints out:
//Index: 0: Value: Eggs
//Index: 1: Value: Banana
for (i, v) in array.enumerated() {
    print("Index: \(i): Value: \(v)")
}