import UIKit


class SwiftSyntaxHighlighter: SyntaxBase {
    var syntaxTheme: SyntaxTheme
    
    var syntax: Syntax = Syntax.SWIFT
    
    init(syntaxTheme: SyntaxTheme) {
        self.syntaxTheme = syntaxTheme
    }
    
    func format(text: String, fontSize: CGFloat) -> NSMutableAttributedString {
        let font = UIFont.systemFont(ofSize: fontSize)

        let attributes: [NSMutableAttributedString.Key:Any] = [.font:font, .foregroundColor: syntaxTheme.baseColor]

        let attributedString = NSMutableAttributedString(string: text, attributes: attributes)
        
        for (pattern, attributes) in SyntaxReplacement.replacements(syntaxTheme: syntaxTheme, syntax: syntax){
            
            do{
                
                let regex = try NSRegularExpression(pattern: pattern)
                let range = NSRange(text.startIndex...,in:text)
                regex.enumerateMatches(in: text, range: range) {
                    
                    match, flags, stop in
                    if let matchRange = match?.range(at: 0) {
                        
                        let matchedText = String(text[Range(matchRange, in: text)!])
                        let wordPattern = SyntaxRegex.syntaxRegex(syntax: syntax).wordPattern
                      
                        if pattern == wordPattern  {
                        
                            if keywords.contains(matchedText)  {
                                attributedString.addAttributes(syntaxTheme.keywordStyle, range: matchRange)
                            }
                            
                            else if builtInTypes.contains(matchedText)  {
                                attributedString.addAttributes(syntaxTheme.keywordStyle, range: matchRange)
                            }
                            
                            else if matchedText.firstLetterIsUpperCase() {
                                attributedString.addAttributes(syntaxTheme.classStyle, range: matchRange)
                            }
                            
                            else if  matchedText.count >= 2 && matchedText.starts(with: "k") && matchedText.substring(from: 1, to: matchedText.count - 1).firstLetterIsUpperCase()  {
                                attributedString.addAttributes(syntaxTheme.constantStyle, range: matchRange)
                            }
                            
                        }
                        
                        else {

                            attributedString.addAttributes(attributes, range: matchRange)
                            
                        }
                        
                    }
                }
            }
            catch{
                print(error.localizedDescription)
            }
        }

        return attributedString
    }
    
     private let keywords: [String] = [
    "class",
    "func",
    "let",
    "public",
    "typealias",
    "deinit",
    "import",
    "operator",
    "static",
    "var",
    "enum",
    "Init",
    "private",
    "struct",
    "extension",
    "internal",
    "protocol",
    "subscript",
    "break",
    "do",
    "if",
    "where",
    "case",
    "else",
    "let",
    "in",
    "while",
    "continue",
    "fallthrough",
    "return",
    "default",
    "for",
    "switch",
    "as",
    "nil",
    "true",
    "_LINE_",
    "dynamicType",
    "self",
    "_COLUMN_",
    "false",
    "Self",
    "_FILE_",
    "is",
    "super",
    "_FUNCTION_",
    "associativity",
    "final",
    "lazy",
    "nonmutating",
    "precedence",
    "right",
    "weak",
    "crossinline",
    "get",
    "left",
    "optional",
    "prefix",
    "set",
    "willSet",
    "dynamic",
    "infix",
    "mutating",
    "override",
    "protocol",
    "Type",
    "didSet",
    "none",
    "postfix",
    "required",
    "unowned",
  ];

     private let builtInTypes: [String] = [
    "Int",
    "Int8",
    "UInt",
    "Float",
    "Double",
    "Bool",
    "String",
    "Character"
  ];
    
}
