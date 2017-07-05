//
//  ViewControllerTestCase.swift
//  UnitCases
//
//  Created by Harish Kumar on 3/7/17.
//  Copyright © 2017 Harish Kumar. All rights reserved.
//

import XCTest
@testable import UnitCases

class ViewControllerTestCase: XCTestCase {
    
    let vc = ViewController()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testIsnumberRight() {
        let odd = 9
        let even = 4
        XCTAssertFalse(vc.isNumberEven(num: odd))
        XCTAssertTrue(vc.isNumberEven(num: even))
    }
    
    func testFibnacciSeries(){
    
        let limit = 4000000
        let answer = 4613732
        
        XCTAssertEqual(vc.sumEvenValueToFibanacci(limit: limit), answer, "This is not the correct answer")
    }
    
    
}
