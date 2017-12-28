//
//  CompositeValidator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class  CompositeValidator<Input>: Validator<Input> {
    
    private let rules: [ValidationRule<Input>]
    
    public init(rules: [ValidationRule<Input>]) {
        self.rules = rules
    }
    
    open override func validate(input: Input) -> ValidationResult {
        if let _ = rules.first(where: { !$0.check(value: input).isFailure() }) {
            return .success
        }
        
        return rules.map { $0.check(value: input) }.first { $0.isFailure() } ?? .success
    }
}
