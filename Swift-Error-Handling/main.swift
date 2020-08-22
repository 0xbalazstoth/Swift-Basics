import Swift;
import Foundation;

// enum ValidationError: Error {
//     case tooShort;
//     case tooLong;
//     case invalidCharacters(Character);
// }

// func validate(_ username: String) throws {
//     guard username.count > 3 else {
//         throw ValidationError.tooShort;
//     }

//     guard.username.count < 15 else {
//         throw ValidationError.tooLong;
//     }

//     for character in username {
//         guard character.isLetter else {
//             throw ValidationError.invalidCharacters(character);
//         }
//     }
// }

// let isValid = validate("userNaMEE.............."); //Too long
// print(isValid);

enum ValidationError: Error {
    case tooShort
    case tooLong
    case invalidCharacterFound(Character)
}

func validate(username: String) throws {
    guard username.count > 3 else {
        throw ValidationError.tooShort
    }

    guard username.count < 15 else {
        throw ValidationError.tooLong
    }

    for character in username {
        guard character.isLetter else {
            throw ValidationError.invalidCharacterFound(character)
        }
    }
}

validate(username: "Bob");