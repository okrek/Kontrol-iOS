//
//  RegexRuleTests.swift
//  KontrolTests
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation
import XCTest
@testable import Kontrol

class RegexRuleTests: XCTestCase {
    
    private let errorMessage = "Text is doesn't match regular expression"
    private var rule: RegexRule!
    
    override func setUp() {
        rule = RegexRule(regex: "\\d+", message: errorMessage)
    }
    
    func testWhenInputDoesntMatchRegex_shouldReturnFailure() {
        let result = rule.check(value: "Dirge")
        
        guard case .failure(let message) = result, message == errorMessage else {
            XCTFail()
            return
        }
    }
    
    func testWhenInputMatchesRegex_shouldReturnSuccess() {
        let result = rule.check(value: "12345")
        
        XCTAssertTrue(result.isSuccess())  
    }
}
