//
//  Validator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class Validator<Input> {
    
    public let tag: String?
    
    public init(tag: String? = nil) {
        self.tag = tag
    }
    
    open func validate(input: Input) -> ValidationResult {
        fatalError("validate(input:) must be overriden")
    }
}
