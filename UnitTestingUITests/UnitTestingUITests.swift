//
//  UnitTestingUITests.swift
//  UnitTestingUITests
//
//  Created by Сергей Иванчихин on 04.05.2022.
//

import XCTest

class UnitTestingUITests: XCTestCase {

    override func setUp()  {

        continueAfterFailure = false
    }

    override func tearDown() {
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.textFields["Name"].tap()
        app.textFields["Name"].typeText("lol")
        
        app.textFields["Surname"].tap()
        app.textFields["Surname"].typeText("kek")
        
        app.textFields["Phone"].tap()
        app.textFields["Phone"].typeText("cheburek")
        
        //XCTAssert(app.tables.staticTexts["lol"].exists)

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
