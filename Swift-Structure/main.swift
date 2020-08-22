import Swift;
import Foundation;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html

//Structure
struct Resolution {
    var width = 1280;
    var height = 720;
}

//Accessing properties
var resolution = Resolution();
print("Width: \(resolution.width)px; Height: \(resolution.height)px"); //Prints out: Width: 1280px; Height: 720px

//Change values in structure
var changeResolution = resolution;
changeResolution.width = 1920;
changeResolution.height = 1080;
print("Width: \(changeResolution.width)px; Height: \(changeResolution.height)px"); //Prints out: Width: 1920px; Height: 1080px

//Memberwise initializers for Structure types
let vga = Resolution(width: 640, height: 480);
print("\(vga)"); //Prints out: Resolution(width: 640, height: 480)
print("Width: \(vga.width)px"); //Prints out: Width: 640px
print("Height: \(vga.height)px"); //Prints out: Height 480px