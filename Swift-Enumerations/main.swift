import Swift;
import Foundation;

//Official documentation: https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html

//Enum with multiple lines
enum Countries {
    case Hungary
    case USA
    case Netherlands
    case UK
    case Denmark
}

//Enum with single line
enum Languages {
    case Hungarian(String), English(String), German(String), Russian(String)
}

//Calling enum
var Country = Countries.Hungary;
print("\(Country)"); //Prints out: Hungary

var Language = Languages.Hungarian("HUN");
print(Language); //Prints out: Hungarian("HUN")