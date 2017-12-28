//
//  BlockValidator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class  BlockValidator<Input>: Validator<Input> {
    
    let validationBlock: (Input) -> ValidationResult
    
    public init(tag: String? = nil, validationBlock: @escaping (Input) -> ValidationResult) {
        self.validationBlock = validationBlock
        super.init(tag: tag)
    }
    
    open override func validate(input: Input) -> ValidationResult {
        return validationBlock(input)
    }
}
