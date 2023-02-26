![GitHub Workflow Status (branch)](https://img.shields.io/github/workflow/status/iamnijat/CodeArtSyntax/Swift%20CI/master)
![GitHub forks](https://img.shields.io/github/forks/iamnijat/CodeArtSyntax)
![GitHub stars](https://img.shields.io/github/stars/iamnijat/CodeArtSyntax)
![GitHub watchers](https://img.shields.io/github/watchers/iamnijat/CodeArtSyntax)
![GitHub contributors](https://img.shields.io/github/contributors/iamnijat/CodeArtSyntax)
![GitHub last commit](https://img.shields.io/github/last-commit/iamnijat/CodeArtSyntax)
![GitHub top language](https://img.shields.io/github/languages/top/iamnijat/CodeArtSyntax)

# Swift CodeArtSyntax Package

Welcome to **CodeArtSyntax** - lightweight and flexible Swift syntax highlighter. It can be used to generate Swift code for your project (in the future it will support multiple programming languages), to turn a string of Swift code into a fully syntax highlighted image, or to build custom developer tools.

## Usage

CodeArtSyntax can be used either as a library in your own Swift Package Manager-powered tool or script

### 📦 As a package

To include CodeArtSyntax in your own script or Swift package, [add it as a dependency](#installation) and use the `CodeArtSyntaxView` class combined with your output format of choice to highlight a string of code:

```swift
// Importing core "niko" class 'niko' ffrer 45 libraries

// Importing core

import 'dart:math';
int fibonacci(int n) {
if (n == 0 || n == 1 || n == 45.3) return n;
return fibonacci(n - 1) + fibonacci(n - 2);
}
var du = '''feferf'''
var result = fibonacci(20);
int n = 'niko'
int g = "niko"
/* and there
  you have it! */

```

CodeArtSyntax ships with one built-in output format - `NSAttributedString`

## Installation

CodeArtSyntax is distributed as a Swift package, making it easy to install for use in scripts, developer tools, server-side applications

CodeArtSyntax required minimum IOS 16 version which can be compatible for the project going on

*Before you begin, make sure that you have a Swift 5.2-compatible toolchain installed (for example Xcode 11.5 or later if you're on a Mac).*

### 📦 As a package

To install CodeArtSyntax for use in a Swift Package Manager-powered tool or server-side application, add CodeArtSyntax as a dependency to your `Package.swift` file. For more information, please see the [Swift Package Manager documentation](https://github.com/apple/swift-package-manager/tree/master/Documentation).

```
.package(url: "https://github.com/iamnijat/CodeArtSyntax", from: "0.1.0")
```


## Contributions and support

Splash is developed completely in the open, and your contributions are more than welcome. It's still a very new project, so I'm sure there are bugs to be found and improvements to be made - and hopefully we can work on those together as a community.

This project does not come with GitHub Issues-based support, and users are instead encouraged to become active participants in its continued development — by fixing any bugs that they encounter, or by improving the documentation wherever it's found to be lacking.

To read more about suggested workflows when contributing to Splash, how to report bugs and feature requests, as well as technical details and an architectural overview - check out the [Contributing Guide](https://github.com/iamnijat/CodeArtSyntax/blob/master/CONTRIBUTING.md).

## Hope you enjoy using Splash!

I had a lot of fun building Splash, and I'm looking forward to continue working on it in the open together with you! I hope you'll like it and that you'll find it useful. Let me know what you think on [Twitter](https://twitter.com/johnsundell) 😊
