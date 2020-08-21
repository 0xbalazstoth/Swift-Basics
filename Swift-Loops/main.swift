import Swift;
import Foundation;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html#ID121

//For-in loops
//Iterate over names
let names = ["Messi", "Neymar", "Mbappé"];
for name in names {
    print("\(name)");
}

//Iterate over numberOfLegs with key-value pairs
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4];
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s \(legCount) legs");
}

//Iterate with intervall
for i in 1...5 {
    print("\(i) times 5 is \(i * 5)");
}

//While loop
//Loop while age is not 18
var age = 1;
while age != 19 {
    print("\(age)")
    age += 1;
}