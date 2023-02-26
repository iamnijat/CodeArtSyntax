//
//  Extension+FirstLetterUppercase.swift
//  CodeSyntax
//
//  Created by Nijat Namazzade on 26.02.23.
//

import Foundation

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


 
