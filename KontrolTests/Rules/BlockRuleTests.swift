//
//  BlockRuleTests.swift
//  KontrolTests
//
//  Created by Maxim Pisarenko on 09/01/2018.
//  Copyright © 2018 Okrek. All rights reserved.
//

import Foundation
import XCTest
@testable import Kontrol

class BlockRuleTests: XCTestCase {

    func testWhenBlockReturnsFailture_shouldReturnFailure() {
        let errorMessage = "Text is doesn't match regular expression"
        let rule = BlockRule<String> { _ in .failure(errorMessage) }
        let result = rule.check(value: "Dirge")

        guard case .failure(let message) = result, message == errorMessage else {
            XCTFail()
            return
        }
    }

    func testWhenBlockReturnsSuccess_shouldReturnSuccess() {
        let rule = BlockRule<String> { _ in .success }
        let result = rule.check(value: "12345")

        XCTAssertTrue(result.isSuccess())
    }
}
