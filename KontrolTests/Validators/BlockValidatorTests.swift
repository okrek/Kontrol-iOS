//
//  BlockValidatorTests.swift
//  KontrolTests
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation
import XCTest
@testable import Kontrol

class BlockValidatorTests: XCTestCase {
    
    func testWhebBlockReturnsFailure_validatorShouldReturnFailure() {
        let errorMessage = "Oops! Something was wrong."
        let validator = BlockValidator<Bool> { _ in .failure(errorMessage) }
        let result = validator.validate(input: false)
        
        guard case .failure(let message) = result, message == errorMessage else {
            XCTFail()
            return
        }
    }
    
    func testWhebBlockReturnsSuccess_validatorShouldReturnSuccess() {
        let validator = BlockValidator<Bool> { _ in .success }
        let result = validator.validate(input: false)
        
        guard case .success = result else {
            XCTFail()
            return
        }
    }
}
