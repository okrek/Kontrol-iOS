//
//  EmptyRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class EmptyRule: ValidationRule<String> {
    
    private let message: String
    
    public init(message: String) {
        self.message = message
    }
    
    open override func check(value: String) -> ValidationResult {
        return value.isEmpty ? .failure(message) : .success
    }
}
