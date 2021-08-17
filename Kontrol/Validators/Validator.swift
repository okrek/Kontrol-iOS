//
//  Validator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

protocol Validator {
    associatedtype Input
    
    var rules: [ValidationRule<Input>] { get }
    func validate(input: Input) -> ValidationResult
}

public struct SimpleValidator<Input>: Validator {
            
    let rules: [ValidationRule<Input>]
    
    public init(rules: [ValidationRule<Input>]) {
        self.rules = rules
    }
    
    public func validate(input: Input) -> ValidationResult {
        return rules.map { $0.check(value: input) }.first { $0.isFailure() } ?? .success
    }
}
