//
//  CompositeRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 06/02/2019.
//  Copyright © 2019 Okrek. All rights reserved.
//

import Foundation

public class CompositeRule<Input>: ValidationRule<Input> {
    
    let rules: [ValidationRule<Input>]
    let message: String
    
    public init(rules: [ValidationRule<Input>], message: String) {
        self.rules = rules
        self.message = message        
    }
    
    public override func check(value: Input) -> ValidationResult {
        if let _ = rules.first(where: { $0.check(value: value) == .success }) {
            return .success
        }
        
        return .failure(message)
    }
}
