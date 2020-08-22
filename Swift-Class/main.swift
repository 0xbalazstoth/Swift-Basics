import Swift;
import Foundation;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html

//Defining Car class with properties
class Car {
    var horsePower: Int = 0;
    var brand: String = "";
    var color: String = "";
    var isItFast: Bool = false;
}

//Accessing Car class properties and giving values to the variables
let myCar = Car(); //Calling Car class
myCar.horsePower = 1200;
myCar.brand = "Renault";
myCar.color = "Light grey";
myCar.isItFast = true;
print("HP: \(myCar.horsePower), Brand: \(myCar.brand), Color: \(myCar.color), Is it fast? \(myCar.isItFast)"); //Prints out: HP: 1200, Brand: Renault, Color: Light grey, Is it fast? true

//Constructor(Initialization)
struct Temperature {
    var tempInCelsius: Double;
    //Constructor is named as init
    init(_ fahrenheit: Double) { //parameter without label
        tempInCelsius = (fahrenheit - 32.0) / 1.8;        
    }
}

var tempFahr: Double = 85;
let temp = Temperature(tempFahr);
print("\(tempFahr) degree Fahrenheit = \(temp.tempInCelsius) degrees Celsius"); //Prints out: 85.0 degree Fahrenheit = 29.4444444444444 degrees Celsius

//Inheritance
class Dog {
    var name: String;
    var breed: String;

    init(name: String, breed: String) {
        self.name = name;
        self.breed = breed;
    }
}

class Poodle: Dog {
    init(_ name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let dog = Dog(name: "Bobby", breed: "Doggy");
print(dog.name);
let poodle = Poodle("Marley");
print(poodle.name);