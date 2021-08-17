//
//  StandartValidator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

public protocol ValidationStrategy {
    func execute<Input>(input: Input, rules: [ValidationRule<Input>]) -> ValidationResult
}

public struct DefaultValidationStrategy: ValidationStrategy {
    
    public init() { }
    
    public func execute<Input>(input: Input, rules: [ValidationRule<Input>]) -> ValidationResult {
        return rules.map { $0.check(value: input) }.first { $0.isFailure() } ?? .success
    }
}

public struct AnySatisfyValidationStrategy: ValidationStrategy {
    
    public init() { }
    
    public func execute<Input>(input: Input, rules: [ValidationRule<Input>]) -> ValidationResult {
        if rules.first(where: { $0.check(value: input).isFailure() == false }) == nil {
            return .success
        }
        
        return rules.map { $0.check(value: input) }.first { $0.isFailure() } ?? .success
    }
}
