//
//  CalculatorUnitTestTests.swift
//  CalculatorUnitTestTests
//
//  Created by Aaron Lee on 2020-12-03.
//

import XCTest
@testable import CalculatorUnitTest

class CalculatorUnitTestTests: XCTestCase {
    
    private var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        
        self.calculator = Calculator()
    }

    func test_AddTwoNumbers() {
        
        let result = self.calculator.add(2, 3)
        XCTAssertEqual(result, 5)
        
    }
    
    func test_SubtractTwoNumbers() {
        
        let result = self.calculator.subtract(5, 2)
        XCTAssertEqual(result, 3)
        
    }
    
    override func tearDown() {
        super.tearDown()
    }

}
