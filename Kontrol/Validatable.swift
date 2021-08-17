//
//  Validatable.swift
//  Kontrol
//
//  Created by Maksim P on 22.06.2021.
//  Copyright © 2021 Okrek. All rights reserved.
//

import Foundation


public protocol ValidatableField {
    var tag: String? { get }
    func validate() -> ValidationResult
}

public protocol ValidatableForm {
    
    func validatableFields() -> [ValidatableField]
    func validate() -> [String: String]
}

public extension ValidatableForm {
    
    func validate() -> [String: String] {
        var errors: [String: String] = [:]
        validatableFields().forEach { field in
            let result = field.validate()
            if  case .failure(let message) = result, let tag = field.tag {
                errors[tag] = message
            }
        }
        
        return errors
    }
}


@propertyWrapper
public struct PropertyValidator<Input>: ValidatableField {
    
    public var wrappedValue: Input
    public let tag: String?
    
    private let rules: [ValidationRule<Input>]
    private let strategy: ValidationStrategy
        
    public init(wrappedValue: Input,
         tag: String? = nil,
         rules: [ValidationRule<Input>],
         strategy: ValidationStrategy = DefaultValidationStrategy()) {
        self.wrappedValue = wrappedValue
        self.rules = rules
        self.strategy = strategy
        self.tag = tag
    }
    
    public func validate() -> ValidationResult {
        strategy.execute(input: wrappedValue, rules: rules)
    }
    
}
