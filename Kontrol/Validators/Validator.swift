//
//  Validator.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

open class  Validator<Input> {
    public var tag: String?
    
    init(tag: String? = nil) {
        self.tag = tag
    }
    
    public func validate(input: Input) -> ValidationResult  {
        fatalError("validate(input:) must be overriden")
    }
}
