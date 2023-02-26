//
//  SyntaxTheme.swift
//  CodeSyntax
//
//  Created by Nijat Namazzade on 14.01.23.
//


import SwiftUI

public struct SyntaxTheme {
    let linesCountColor: UIColor
    let backgroundColor: UIColor
    let baseColor: UIColor
    let baseStyle: TextStyle
    let numberStyle: TextStyle
    let commentStyle: TextStyle
    let keywordStyle:TextStyle
    let stringStyle: TextStyle
    let punctuationStyle: TextStyle
    let classStyle: TextStyle
    let constantStyle: TextStyle
    

    
    public func vsCodeDark() -> SyntaxTheme {
        return SyntaxTheme(
            linesCountColor: UIColor(hexString: "#ffffff", alpha: 0.7),
            backgroundColor: UIColor(hexString: "#1e1e1e"),
            baseColor:  UIColor(hexString: "#d4d4d4"),
            baseStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#d4d4d4")],
            numberStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#b5cea8")],
            commentStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#6a9955")],
            keywordStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#569cd6")],
            stringStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#ce9178")],
            punctuationStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#d4d4d4")],
            classStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#4ec9b0")],
            constantStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#4fc1ff")]
           
        )

        
    }
    
    
    public func standard() -> SyntaxTheme {
       return SyntaxTheme(
        linesCountColor: UIColor(hexString: "#37474f", alpha: 0.7),
        backgroundColor: UIColor(hexString: "#ffffff"),
        baseColor:  UIColor(hexString: "#000000"),
        baseStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#000000")],
        numberStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#1565c0")],
        commentStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#9e9e9e")],
        keywordStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#9c27b0")],
        stringStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#43a047")],
        punctuationStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#000000")],
        classStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#512da8")],
        constantStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#795548")]
       );
     }
    
    public func dracula() -> SyntaxTheme {
       return SyntaxTheme(
        linesCountColor: UIColor(hexString: "#ffffff", alpha: 0.7),
        backgroundColor: UIColor(hexString: "#263238"),
        baseColor:  UIColor(hexString: "#ffffff"),
        baseStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#ffffff")],
        numberStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#6bc1ff")],
        commentStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#9e9e9e")],
        keywordStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#ffa959")],
        stringStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#93ffab")],
        punctuationStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#ffffff")],
        classStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#44ba8b")],
        constantStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#795548")]
       );
     }
    
    
    public func ayuLight() -> SyntaxTheme {
       return SyntaxTheme(
        linesCountColor: UIColor(hexString: "#37474f", alpha: 0.7),
        backgroundColor: UIColor(hexString: "#fafafa"),
        baseColor:  UIColor(hexString: "#202734"),
        baseStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#202734")],
        numberStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#42bedf")],
        commentStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#acb1b7")],
        keywordStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#fe753b")],
        stringStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#65c8e2")],
        punctuationStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#fca535")],
        classStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#fe772f")],
        constantStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#fd713e")]
       );
     }
    
    public func ayuDark() -> SyntaxTheme {
       return SyntaxTheme(
        linesCountColor: UIColor(hexString: "#ffffff", alpha: 0.8),
        backgroundColor: UIColor(hexString: "#202734"),
        baseColor:  UIColor(hexString: "#ffffff"),
        baseStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#ffffff")],
        numberStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#dcc76d")],
        commentStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#5c6c79")],
        keywordStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#ffa040")],
        stringStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#87d06c")],
        punctuationStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#ffcc5f")],
        classStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#fe9741")],
        constantStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#f87e6e")]
       );
     }
    
    
    public func gravityLight() -> SyntaxTheme {
       return SyntaxTheme(
        linesCountColor: UIColor(hexString: "#37474f", alpha: 0.7),
        backgroundColor: UIColor(hexString: "#fafafa"),
        baseColor:  UIColor(hexString: "#202734"),
        baseStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#202734")],
        numberStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#3d94fc")],
        commentStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#9da4af")],
        keywordStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#0053a9")],
        stringStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#4aa95b")],
        punctuationStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#e7614d")],
        classStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#a94295")],
        constantStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#d15849")]
       );
     }
    
    public func vsCodeLight() -> SyntaxTheme {
        return SyntaxTheme(
            linesCountColor: UIColor(hexString: "#000000", alpha: 0.7),
            backgroundColor: UIColor(hexString: "#ffffff"),
            baseColor:  UIColor(hexString: "#000000"),
            baseStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#000000")],
            numberStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#098658")],
            commentStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#008000")],
            keywordStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#0000ff")],
            stringStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#a31515")],
            punctuationStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#000000")],
            classStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#267f99")],
            constantStyle: [NSMutableAttributedString.Key.foregroundColor : UIColor(hexString: "#0070c1")]
           
        )
        
    }
    
    
    
   
    
   
   
    
}




