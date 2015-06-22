
import UIKit
import XCTest
import swift_querystring



public class TestString: QueryString {
    public var beep = "bopp"
    
    public override init() {
        super.init()
    }
}

public class TestInt: QueryString {
    public var count: Int = 5
    
    public override init() {
        super.init()
    }
}

public class TestArray: QueryString {
    public var animals = ["dog", "horse", "bear"]
    
    public override init() {
        super.init()
    }
}

public class TestBool: QueryString {
    public var works = true
    
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
        var test = TestString()
        XCTAssertEqual(test.encode(), "beep=\"bopp\"")
    }
    
    func testInt() {
        var test = TestInt()
        XCTAssertEqual(test.encode(), "count=5")
    }
    
    func testArray() {
        var test = TestArray()
        XCTAssertEqual(test.encode(), "animals=[\"dog\",\"horse\",\"bear\"]")
    }
    
    func testBool() {
        var test = TestBool()
        XCTAssertEqual(test.encode(), "works=true")
    }
    
}
