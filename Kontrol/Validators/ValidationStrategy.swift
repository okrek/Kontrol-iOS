//
//  StandartValidator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

protocol ValidationStrategy {
    func execute<Input>(input: Input, rules: [ValidationRule<Input>]) -> ValidationResult
}

struct DefaultValidationStrategy: ValidationStrategy {
    
    func execute<Input>(input: Input, rules: [ValidationRule<Input>]) -> ValidationResult{
        return rules.map { $0.check(value: input) }.first { $0.isFailure() } ?? .success
    }
}

struct AnySatisfyValidationStrategy: ValidationStrategy {
    
    func execute<Input>(input: Input, rules: [ValidationRule<Input>]) -> ValidationResult {
        if rules.first(where: { $0.check(value: input).isFailure() == false }) == nil {
            return .success
        }
        
        return rules.map { $0.check(value: input) }.first { $0.isFailure() } ?? .success
    }
}
