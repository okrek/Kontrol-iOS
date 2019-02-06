//
//  StandartValidator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

public class StandartValidator<Input>: Validator<Input> {
    
    private let rules: [ValidationRule<Input>]
    
    public init(tag: String? = nil, rules: [ValidationRule<Input>]) {
        self.rules = rules
        super.init(tag: tag)
    }
    
    public override func validate(input: Input) -> ValidationResult {
        return rules.map { $0.check(value: input) }.first { $0 != .success } ?? .success
    }
}
