//
//  ValidationRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class ValidationRule<Input> {
    
    open func check(value: Input) -> ValidationResult {
        fatalError("Must be overriden")
    }
}
