//
//  MaxLengthRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class  MaxLengthRule: ValidationRule<String> {
    
    private let maxLength: Int
    private let message: String
    
    public init(maxLength: Int, message: String) {
        self.maxLength = maxLength
        self.message = message
    }
    
    open override func check(value: String) -> ValidationResult {
        return value.count > maxLength ? .failure(message) : .success
    }
}

