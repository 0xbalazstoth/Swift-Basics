import Swift;
import Foundation;

var namesOfIntegers = [Int: String]();
namesOfIntegers[16] = "sixteen";
print("\(namesOfIntegers)"); //Prints out: [16: "sixteen"]

//Multiple key-value pairs
var footballClubsByCountry: [String: String] = ["FC Barcelona": "Catalan", "PSG":"France", "FTC": "Hungary"];
print("\(footballClubsByCountry)"); //Prints out: ["PSG": "France", "FTC": "Hungary", "FC Barcelona": "Catalan"]

//Without type
var numbersInRoman = [1: "I", 2: "II", 3: "II", 4: "IV"];
print("\(numbersInRoman)"); //Prints out: [2: "II", 3: "III", 1: "I", 4: "IV"]

//Find value by key
print("\(numbersInRoman[3])"); //Prints out: II (What is wrong, next we will fix it.)

//Change value by key
numbersInRoman[3] = "III";
print("\(numbersInRoman)");

//Iterating over Dictionary by keys with sorting
for number in numbersInRoman.keys.sorted() {
    print("\(number)");
}

//Iterating over Dictionary by values with sorting
for roman in numbersInRoman.values.sorted() {
    print("\(roman)");
}

for item in numbersInRoman {
    print("\(item.key):\(item.value)")
}