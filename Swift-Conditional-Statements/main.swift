import Swift;
import Foundation;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html#ID127

//Checking if cake is Chocolate else prints out 😔
var cake:String = "Chocolate";
if(cake == "Chocolate") {
    print("🎂")
} else {
    print("🍕");
}

//Multiple statements
cake = "Pizza";
if(cake == "Bacon") {
    print("🥓");
} else if(cake == "Chocolate") {
    print("🎂");
} else {
    print("🍕");
}

//Switch
var object:String = "Balloon";
switch object {
    case "Balloon": //First case, like if object == Balloon
        print("\("🎈")");
    case "Yo-yo": //Second case, like else if object == Yo-yo
        print("\("🪀")");
    default: //Default like an else
        print("\("📻")");
}

//Control Transwer Statements:
// continue
// break
// fallthrough
// return
// throw

//continue
let puzzleInput = "great minds think alike";
var puzzleOutput = "";
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "];
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue;
    }
    puzzleOutput.append(character);
}
print(puzzleOutput); // Prints out: "grtmndsthnklk"

//break
for n in 1...10 {
    if (n == 10) {
        break;
    } else {
        print("\(n)"); //Prints out: numbers between 1 and 10
    }
}

//fallthrough
let integerToDescribe = 5;
var description = "The number \(integerToDescribe) is";
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also";
    fallthrough;
default:
    description += " an integer.";
}
print(description); //Prints out: The number 5 is a prime number, and also an integer.

//return
func myName(name: String)->  String {
    return "My name is \(name)";
}

print("\(myName(name: "Bob"))");
