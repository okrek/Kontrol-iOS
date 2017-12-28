//
//  PropertyValidator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class  PropertyValidator<Root, Value>: Validator<Root> {
    
    private let keyPath: KeyPath<Root, Value>
    private let rules: [ValidationRule<Value>]
    
    public init(keyPath: KeyPath<Root, Value>, tag: String? = nil, rules: [ValidationRule<Value>]) {
        self.keyPath = keyPath
        self.rules = rules
        super.init(tag: tag)
    }
    
    open override func validate(input: Root) -> ValidationResult {
        let checkedValue = input[keyPath: keyPath]
        return rules.map { $0.check(value: checkedValue) }.first { $0.isFailure() } ?? .success
    }
}
