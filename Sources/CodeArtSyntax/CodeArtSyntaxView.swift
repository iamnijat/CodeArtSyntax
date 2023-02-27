import SwiftUI
 
public struct CodeArtSyntaxView: View {
    
    var code: String
    var syntax: Syntax
    var withLinesCount: Bool
    var syntaxTheme: SyntaxTheme
    var fontSize: CGFloat
    
    public init(code: String, syntax: Syntax, withLinesCount: Bool, syntaxTheme: SyntaxTheme, fontSize: CGFloat) {
        self.code = code
        self.fontSize = fontSize
        self.syntax = syntax
        self.withLinesCount = withLinesCount
        self.syntaxTheme = syntaxTheme
    }
    
    public var body: some View {
        let backgroundColor = Color(syntaxTheme.backgroundColor)
        
        VStack {
            ScrollView {
                HStack(alignment: .top) {
                    
                    if withLinesCount {
                        VStack {
                            ForEach(1..<(code.components(separatedBy: "\n").count + 1), id: \.self) {
                                number in
                                CodeLinesView(number: "\(number)", syntaxTheme: syntaxTheme, fontSize: fontSize)
                            }
                        }
                    }
                    
                    CodeView(code: code, syntax: syntax, syntaxTheme: syntaxTheme, fontSize: fontSize)
                   
                }}.padding(15)
        }
        .background(backgroundColor)
    }
}


private struct CodeLinesView: View {
    
    let number: String
    let syntaxTheme: SyntaxTheme
    let fontSize: CGFloat
    
 
    var body: some View {
        Text(AttributedString(getCodeLines(code: number, syntaxTheme: syntaxTheme, fontSize: fontSize)))
    }
    
   
  
}

private struct CodeView: View {
    
    let code: String
    let syntax: Syntax
    let syntaxTheme: SyntaxTheme
    let fontSize: CGFloat
 
    var body: some View {
        Text(AttributedString(
            HighlightSpan.getSyntax(syntax: .SWIFT, theme: syntaxTheme).format(text: code, fontSize: fontSize))
            )
        

    }

}

private func getCodeLines(code: String, syntaxTheme: SyntaxTheme, fontSize: CGFloat) -> NSMutableAttributedString {
    let font = UIFont.systemFont(ofSize: fontSize)
    
    let attributes: [NSMutableAttributedString.Key:Any] = [.font:font, .foregroundColor: syntaxTheme.linesCountColor]
    
    let attributedString = NSMutableAttributedString(string: code, attributes: attributes)
    
    return attributedString
}



