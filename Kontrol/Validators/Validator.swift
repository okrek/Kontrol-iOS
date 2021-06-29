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
    
    var rules: [ValidationRule<Input>] { get}
    func validate(input: Input) -> ValidationResult
}
