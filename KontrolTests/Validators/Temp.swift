//
//  Temp.swift
//  KontrolTests
//
//  Created by Maksim P on 22.06.2021.
//  Copyright © 2021 Okrek. All rights reserved.
//

import XCTest
@testable import Kontrol

class Temp: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
       let ttt = Test()
        let r = ttt.validate()
        print(r)
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
