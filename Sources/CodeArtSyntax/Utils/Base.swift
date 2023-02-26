//
//  Base.swift
//  CodeSyntax
//
//  Created by Nijat Namazzade on 11.01.23.
//

import Foundation
import SwiftUI

protocol SyntaxBase {
    var syntaxTheme: SyntaxTheme { get set }
    var syntax: Syntax { get }
    func format(text: String, fontSize: CGFloat) -> NSMutableAttributedString
}

enum Syntax {
    case SWIFT
}

enum HighlightType {
    case number
    case comment
    case keyword
    case string
    case punctuation
    case klass // or struct
    case constant
}

class HighlightSpan {
    
    func textStyle(syntaxTheme: SyntaxTheme, type: HighlightType) -> TextStyle {
        switch type {
        case .number:
            return syntaxTheme.numberStyle
        case .comment:
            return syntaxTheme.commentStyle
        case .keyword:
            return syntaxTheme.keywordStyle
        case .string:
            return syntaxTheme.stringStyle
        case .punctuation:
            return syntaxTheme.punctuationStyle
        case .klass:
            return syntaxTheme.classStyle
        case .constant:
            return syntaxTheme.constantStyle
        }
        
    }
    
}


func getSyntax(syntax: Syntax, theme: SyntaxTheme) -> SyntaxBase {
    switch syntax {
    case .SWIFT:
        return SwiftSyntaxHighlighter(syntaxTheme: theme)
    }
    
}
  


