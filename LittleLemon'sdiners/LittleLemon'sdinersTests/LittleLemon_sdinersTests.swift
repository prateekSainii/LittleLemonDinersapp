//
//  LittleLemon_sdinersTests.swift
//  LittleLemon'sdinersTests
//
//  Created by Prateek Saini on 21/10/24.
//

import Testing
import XCTest

import XCTest
@testable import LittleLemon_sdiners

class MenuItemTests: XCTestCase {
    
    func testMenuItemTitle() {
        let item = MenuItem(title: "Test Food", ingredients: [.spinach, .carrot], price: 10.0, category: .food)
        XCTAssertEqual(item.title, "Test Food")
    }
    
    func testMenuItemIngredients() {
        let item = MenuItem(title: "Test Food", ingredients: [.spinach, .carrot], price: 10.0, category: .food)
        XCTAssertEqual(item.ingredients, [.spinach, .carrot])
    }
}
