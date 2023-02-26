//
//  SyntaxRegex.swift
//  CodeSyntax
//
//  Created by Nijat Namazzade on 26.02.23.
//

import Foundation


struct SyntaxRegex {
    
     let intValuePattern: String
     let htmlTagPattern: String
     let doubleValuePattern: String
     let multilineCommentsPattern: String
     let singleLineCommentsPattern: String
     let metaDataPattern: String
     let commentBlockStartPattern: String
     let commentBlockEndPattern: String
     let commentLineStartPattern: String
     let stringWithSingleQuotesValuePattern: String
     let stringWithDoubleQuotesValuePattern: String
     let rawStringWithSingleQuotesValuePattern: String
     let rawStringWithDoubleQuotesValuePattern: String
     let multiLineStringWithSingleQuotesValuePattern: String
     let multiLineStringWithDoubleQuotesValuePattern: String
     let punctuationPattern: String
     let wordPattern: String


    static func syntaxRegex(syntax: Syntax) -> SyntaxRegex {
//        switch syntax {
//        case .SWIFT:
//        return SyntaxRegex(
//                intValuePattern: "\\d+",
//                htmlTagPattern: "(<([^>]+)>)",
//                stringValuePattern: "string",
//                multilineCommentsPattern: "/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/",
//                singleLineCommentsPattern: "[/]+.*"
//            )
//        case .DART:
//        return SyntaxRegex(
//                intValuePattern: "\\d+",
//                htmlTagPattern: "(<([^>]+)>)",
//                stringValuePattern: "string",
//                multilineCommentsPattern: "/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/",
//                singleLineCommentsPattern: "[/]+.*"
//            )
//        case .JAVA:
//        return SyntaxRegex(
//                intValuePattern: "\\d+",
//                htmlTagPattern: "(<([^>]+)>)",
//                stringValuePattern: "string",
//                multilineCommentsPattern: "/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/",
//                singleLineCommentsPattern: "[/]+.*"
//            )
//        }
//
//        return SyntaxRegex(
//            intValuePattern: "\\d+",
//            htmlTagPattern: "(<([^>]+)>)",
//            doubleValuePattern: "\\d+\\.\\d+",
//            multilineCommentsPattern: "/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/",
//            singleLineCommentsPattern: "[/]+.*",
//            metaDataPattern: "@\\w+",
//            rawStringWithSingleQuotesValuePattern: "\'(.*)\'",
//            rawStringWithDoubleQuotesValuePattern: "\"(.*)\"",
//            multiLineStringWithSingleQuotesValuePattern: #"'''(?:[^'\\]|\\(.|\n))*'''",
//            multiLineStringWithDoubleQuotesValuePattern: #""""(?:[^"\\]|\\(.|\n))*"""""#
//        )
        //(/\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/)|(//.*)
        
        
        return SyntaxRegex(
            intValuePattern: "\\d+",
            htmlTagPattern: "(<([^>]+)>)",
            doubleValuePattern: #"\d+\.\d+"#,
            multilineCommentsPattern: "(/\\*+[^*]*\\*+(?:[^/*][^*]*\\*+)*/)",
            singleLineCommentsPattern: #"\/\/[^\n\r]+?(?:\*\)|[\n\r])"#,
            metaDataPattern: "@\\w+",
            commentBlockStartPattern: "/\\*",
            commentBlockEndPattern: "\\*/",
            commentLineStartPattern: "//",
            stringWithSingleQuotesValuePattern: #"'(?:[^'\\]|\\.)*'"#,
            stringWithDoubleQuotesValuePattern: #""(?:[^"\\]|\\.)*""#,
            rawStringWithSingleQuotesValuePattern: #"'(.*)'"#,
            rawStringWithDoubleQuotesValuePattern: #""(.*)""#,
            multiLineStringWithSingleQuotesValuePattern: #"'''(?:[^'\\]|\\(.|\n))*'''"#,
            multiLineStringWithDoubleQuotesValuePattern: #""""(?:[^"\\]|\\(.|\n))*"""""#,
            punctuationPattern: #"[\[\]{}().!=<>&\|\?\+\-\*/%\^~;:,]"#,
            wordPattern: #"\w+"#
        )
    }
    
}
