//
//  BooleanRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

public class BoolRule: ValidationRule<Bool> {

    private let message: String

    public init(message: String) {
        self.message = message
    }

    public override func check(value: Bool) -> ValidationResult {
        return value ? .success : .failure(message)
    }
}
