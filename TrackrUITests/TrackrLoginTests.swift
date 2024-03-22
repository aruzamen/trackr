//
//  TrackrLoginTests.swift
//  TrackrUITests
//
//  Created by Marcelo Aruzamen on 22/3/24.
//

import XCTest

final class TrackrLoginTests: XCTestCase {

    func testLoginFlow() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.staticTexts["track.r"].tap()
        app.buttons["Login"].tap()
        
        XCTAssert(app.staticTexts["admin@mail.com"].exists)
    }
    
    func testLoginTestFlow() {
        let app = XCUIApplication()
        app.launch()
        
        let usernameTextfield = app.textFields.element(matching: .textField, identifier: "usernameField")
        let loginButton = app.buttons["Login"]
        
        if (usernameTextfield.exists && loginButton.exists) {
            usernameTextfield.tap()
            usernameTextfield.typeText("test")
            loginButton.tap()
            
            XCTAssert(app.staticTexts["test@mail.com"].exists)
        } else {
            XCTFail()
        }
    }
}
