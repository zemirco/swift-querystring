
import UIKit
import XCTest
import swift_querystring



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
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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
