import Swift;
import Foundation;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/Functions.html

//Function without parameter(s)
func helloWorld() -> String {
    return "Hello, World!";
}
print("\(helloWorld())");

//Function with parameter(s)
//String function with string parameter what will return a greeting message.
func greet(name: String) -> String {
    let greeting = "Hello, " + name + "!";
    return greeting;
}
print("\(greet(name: "Bob"))"); //Prints out: Hello, Bob!

//Function with multiple return values
func person(fullName: String) -> (firstName: String, lastName: String) {
    var split = fullName.components(separatedBy: " ");
    let firstName = split[0];
    let lastName = split[1];
    return (firstName, lastName);
}
let fullName = person(fullName: "John Doe");
print("Firstname: \(fullName.firstName), Lastname: \(fullName.lastName)"); //Prints out: Firstname: John, Lastname: Doe


//Function without return and type
func message() {
    print("This function has nothing, so it is void.");
}
print(message()); //Prints out: This function has nothing, so it is void.

//Function without labeled parameter
func points(_ scoredGoals: Int, tournament: String) {
    print("\(scoredGoals), \(tournament)");
}
print(points(55, tournament: "UCL")); //Prints out: 55, UCL

//Variadic Parameters without label
func numbersAverage(_ array: Int...) -> Double {
    var sum: Int = 0;
    var average: Double = 0;
    for number in array {
        sum += number;
    }
    average = Double(sum) / Double(array.count);
    return average;
}
print("Average: \(numbersAverage(4, 5, 4, 23, 54, 12, 21))"); //Prints out: Average: 17.5714285714286

//Using function as type
func add(_ n1:Int, _ n2:Int) -> Int {
    return n1 + n2;
}
var mathFunction: (Int, Int) -> Int = add
print("Sum: \(mathFunction(5, 4))"); //Prints out: Sum: 9

