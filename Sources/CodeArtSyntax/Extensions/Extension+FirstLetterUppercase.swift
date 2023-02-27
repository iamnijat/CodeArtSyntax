import Foundation

// Extension which can be used to
// check the string's firstletter
// is uppercase or not

extension String {
    func firstLetterIsUpperCase() -> Bool {
      if (!self.isEmpty) {
          if let firstCharacter = self.first {
              return firstCharacter.isUppercase
          }
          
      }
      return false
    }
}


 
