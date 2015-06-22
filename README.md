
# swift-querystring

Swift library for encoding classes into URL query parameters.

## Installation

Copy `QueryString.swift` from ./swift-querystring/ into your project.

## Usage

```swift
// let your own class inherit from QueryString
public class MyClass: QueryString {
    public var beep = "bopp"

    public override init() {
        super.init()
    }
}

// create new instance
var mine = MyClass()

// convert class into QueryString
println(mine.encode()) // "beep="bopp""
```

## Test

<kbd>cmd</kbd> + <kbd>u</kbd>

## License

MIT
