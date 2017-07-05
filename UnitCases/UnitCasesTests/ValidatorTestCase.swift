//
//  ValidatorTestCase.swift
//  UnitCases
//
//  Created by Harish Kumar on 3/6/17.
//  Copyright © 2017 Harish Kumar. All rights reserved.
//

import XCTest
@testable import UnitCases
class ValidatorTestCase: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testIsEmailValid(){
        
        let validEmails = ["hboyina@nisum.com","harish.boyin@gmail.com","hkboina@gmail.com","asdfs.12@hotmail.com"]
        let invalidEmails = ["123fdgsdfg","asd@!asdf.com","kajsghlfkhask","asfdas@*^B"]
        
        for validEmail in validEmails{
            XCTAssertEqual(Validator.isEmailValid(isEmail: validEmail), true)
        }
        
        for inValidEmail in invalidEmails{
            XCTAssertEqual(Validator.isEmailValid(isEmail: inValidEmail), false)
        }
        
        
    
    }
    
    func testIspersonName()
    {
        let person = Person(name:"Nisum")
        XCTAssertEqual(person.name, "Nisum")
    }
    
    func testBagColor()
    {
        let person = Person(name: "Harish", bagColor: "Yellow")
        XCTAssertEqual(person.name, "Harish")
        XCTAssertEqual(person.bagColor, "Yellow")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
