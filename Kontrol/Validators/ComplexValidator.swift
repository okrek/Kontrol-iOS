//
//  ComplexValidator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

public class ComplexValidator<Input> {

    private let validators: [Validator<Input>]

    public init(validators: [Validator<Input>]) {
        if !validators.filter({ $0.tag == nil }).isEmpty {
            fatalError("All validators should contain tag")
        }

        self.validators = validators
    }

    public func validate(input: Input) -> [String: String] {
        var errors: [String: String] = [:]
        validators.forEach {
            let result = $0.validate(input: input)
            if  case .failure(let message) = result {
                errors[$0.tag!] = message
            }
        }

        return errors
    }
}
