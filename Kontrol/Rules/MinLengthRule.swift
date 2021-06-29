//
//  MinLengthRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class  MinLengthRule: ValidationRule<String> {
    
    private let minLength: Int
    private let message: String
    
    public init(minLength: Int, message: String) {
        self.minLength = minLength
        self.message = message
    }
    
    open override func check(value: String) -> ValidationResult {
        return value.count < minLength ? .failure(message) : .success
    }
}
