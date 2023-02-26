//
//  SyntaxReplacement.swift
//  CodeSyntax
//
//  Created by Nijat Namazzade on 26.02.23.
//

import Foundation



struct SyntaxReplacement {
    
    static func replacements(syntaxTheme: SyntaxTheme, syntax: Syntax) -> Replacements {
        
    let syntaxRegex = SyntaxRegex.syntaxRegex(syntax: syntax)
        
       return [
  
        syntaxRegex.intValuePattern: syntaxTheme.numberStyle,
        syntaxRegex.doubleValuePattern: syntaxTheme.numberStyle,
        syntaxRegex.metaDataPattern: syntaxTheme.keywordStyle,
        syntaxRegex.stringWithSingleQuotesValuePattern: syntaxTheme.stringStyle,
        syntaxRegex.stringWithDoubleQuotesValuePattern: syntaxTheme.stringStyle,
        syntaxRegex.rawStringWithSingleQuotesValuePattern: syntaxTheme.stringStyle,
        syntaxRegex.rawStringWithDoubleQuotesValuePattern: syntaxTheme.stringStyle,
        syntaxRegex.multiLineStringWithSingleQuotesValuePattern: syntaxTheme.stringStyle,
        syntaxRegex.multiLineStringWithDoubleQuotesValuePattern: syntaxTheme.stringStyle,
        syntaxRegex.punctuationPattern: syntaxTheme.punctuationStyle,
        syntaxRegex.wordPattern: syntaxTheme.baseStyle,
        syntaxRegex.multilineCommentsPattern: syntaxTheme.commentStyle,
        syntaxRegex.singleLineCommentsPattern: syntaxTheme.commentStyle,
       ]
    }

}
