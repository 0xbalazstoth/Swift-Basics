import Swift;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#ID484

var letters = Set<Character>(["a", "b"]);
print("\(letters.count)") //Prints out: 2

//Insert item to Set<T>
letters.insert("c");
print("\(letters)"); //Prints out: ["a", "b", "c"]

//Init an empty set, especially letters
letters = [];
print("\(letters)") //Prints out an empty array

//Creating a Set with an Array Literal
var footballClubs: Set<String> = ["FC Barcelona", "PSG", "FTC", "Lokomotiv Moskva"];

//Without setting type
var _footballClubs: Set = ["FC Barcelona", "PSG", "FTC", "Lokomotiv Moskva"]; //If all values has the same type, Set will automatically set the type, in this case String
print("\(footballClubs)")

//Checking if Set is empty or not
if footballClubs.isEmpty {
    print("C'mon...")
} else {
    print("And... What is the name of your favorite club?");
}

//Checking if Set contains a particular item
if footballClubs.contains("PSG") {
    print("I prefer FC Barcelona more...")
} else {
    print("PSG is no more.");
}

//Removing an item
footballClubs.remove("PSG");
print("\(footballClubs)"); //Prints out: ["Lokomotiv Moskva", "FTC", "FC Barcelona"]   

//Removing everything
footballClubs.removeAll();
print("\(footballClubs)"); //Prints out an empty array

//Iterating over a Set
for club in _footballClubs {
    print("\(club)")
}

//Sorting Set
for club in _footballClubs.sorted() {
    print("\(club)")
}

//Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9];
let evenDigits: Set = [0, 2, 4, 6, 8];
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7];

//Union
print("\(oddDigits.union(evenDigits).sorted())");

//Intersection
print("\(oddDigits.intersection(evenDigits).sorted())");

//Subtracting
print("\(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())");

//SymmetricDifference
print("\(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())");

//Set Membership and Equality
let houseAnimals: Set = ["🐶", "🐱"];
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"];
let cityAnimals: Set = ["🐦", "🐭"];

houseAnimals.isSubset(of: farmAnimals); //true
farmAnimals.isSuperset(of: houseAnimals); //true
farmAnimals.isDisjoint(with: cityAnimals); //true