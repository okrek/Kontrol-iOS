//
//  EmptyRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

public class EmptyRule: ValidationRule<String> {

    private let message: String

    public init(message: String) {
        self.message = message
    }

    public override func check(value: String) -> ValidationResult {
        return value.isEmpty ? .failure(message) : .success
    }
}
