
import XCTest
@testable import swift_querystring

open class TestString: QueryString {
    open var beep = "bopp"
    
    public override init() {
        super.init()
    }
}

open class TestInt: QueryString {
    open var count: Int = 5
    
    public override init() {
        super.init()
    }
}

open class TestArray: QueryString {
    open var animals = ["dog", "horse", "bear"]
    
    public override init() {
        super.init()
    }
}

open class TestBool: QueryString {
    open var works = true
    
    public override init() {
        super.init()
    }
}

open class TestOptional: QueryString {
    open var one: String?
    open var count: Int?
    open var nothing: String?
    
    public override init() {
        super.init()
    }
}

class swift_querystringTests: XCTestCase {

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual("awesome", "Hello, World!")
    }

    static var allTests : [(String, (swift_querystringTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
    
    func testString() {
        let test = TestString()
        XCTAssertEqual(test.encode(), "beep=\"bopp\"")
    }

    func testInt() {
        let test = TestInt()
        XCTAssertEqual(test.encode(), "count=5")
    }
    
    func testArray() {
        let test = TestArray()
        XCTAssertEqual(test.encode(), "animals=[\"dog\",\"horse\",\"bear\"]")
    }
    
    func testBool() {
        let test = TestBool()
        XCTAssertEqual(test.encode(), "works=true")
    }
    
    func testOptional() {
        let test = TestOptional()
        test.one = "one"
        test.count = 10
        XCTAssertEqual(test.encode(), "one=\"one\"&count=10")
    }
    
}
