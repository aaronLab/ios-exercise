//
//  CalculatorUnitTestTests.swift
//  CalculatorUnitTestTests
//
//  Created by Aaron Lee on 2020-12-03.
//

import XCTest
@testable import CalculatorUnitTest

class CalculatorUnitTestTests: XCTestCase {

    func test_AddTwoNumbers() {
        
        let calculator = Calculator()
        let result = calculator.add(2, 3)
        
        XCTAssertEqual(result, 5)
        
    }
    
    func test_SubtractTwoNumbers() {
        
        let calculator = Calculator()
        let result = calculator.subtract(5, 2)
        
        XCTAssertEqual(result, 3)
        
    }

}
