//
//  ComplexValidatorTests.swift
//  KontrolTests
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation
import XCTest
@testable import Kontrol

class ComplexValidatorTests: XCTestCase {

    private let validator = ComplexValidator<TestForm>(validators: [Validator()])

    override func setUp() {
        super.setUp()

        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}

struct TestForm {

}
