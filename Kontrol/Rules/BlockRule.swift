//
//  BlockRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 09/01/2018.
//  Copyright © 2018 Okrek. All rights reserved.
//

import Foundation

open class BlockRule<Input>: ValidationRule<Input> {
    
    private let validationBlock: (Input) -> ValidationResult
    
    public init(block: @escaping (Input) -> ValidationResult) {
        self.validationBlock = block
    }
    
    open override func check(value: Input) -> ValidationResult {
        return validationBlock(value)
    }
}
