import Swift;
import Foundation;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/Closures.html

//Sorting an array backward
let names = ["Bob", "Joe", "Brad", "Peter"];
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2;
}
var reversedNames = names.sorted(by: backward);
print("\(reversedNames)"); //Prints out: ["Peter", "Joe", "Brad", "Bob"]