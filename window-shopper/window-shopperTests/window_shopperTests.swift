//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Joseph Freeman on 2020-02-15.
//  Copyright © 2020 Sterling Freeman. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGetHours() {
        XCTAssertEqual(Wage.getHours(forWage: 10, andPrice: 200.1), 21)//Round up from blah blah
        XCTAssertEqual(Wage.getHours(forWage: 10, andPrice: 200), 20)//Exactly equals blah blah
        XCTAssertEqual(Wage.getHours(forWage: 9.8, andPrice: 200), 21)// lower wage = extra hour
        XCTAssertEqual(Wage.getHours(forWage: 10, andPrice: 0), 0)// Free means 0 hours
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
