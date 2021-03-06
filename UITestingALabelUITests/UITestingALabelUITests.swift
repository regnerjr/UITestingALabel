import XCTest

class UITestingALabelUITests: XCTestCase {

    var app: XCUIApplication!
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIDevice.sharedDevice().orientation = .Portrait
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAllUIComponentsAreShownAtLaunch(){
        XCTAssert(app.staticTexts["Label"].exists)
        XCTAssert(app.buttons["Yes"].exists)
        XCTAssert(app.buttons["No"].exists)
    }
    
    func testLabelIsUpdatedWhenYesNoButtonsArePressed() {
        //to ensure that a label appears on the screen Query for the text that you expect
        //and assert that it exists.
        XCTAssert(app.staticTexts["Label"].exists)

        //You may also want to assert that only one label is currently on screen
        XCTAssert(app.staticTexts.count == 1)

        app.buttons["No"].tap()
        XCTAssert(app.staticTexts["No"].exists)

        app.buttons["Yes"].tap()
        XCTAssert(app.staticTexts["Yes"].exists)

    }
}
