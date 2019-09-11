//
//  RegexRule.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

public class RegexRule: ValidationRule<String> {

    private let regex: NSRegularExpression
    private let message: String

    public init(regex: String, message: String) {
        self.regex = try! NSRegularExpression(pattern: regex)
        self.message = message
    }

    public override func check(value: String) -> ValidationResult {
        return regex.numberOfMatches(in: value, range: NSRange(location: 0, length: value.count)) > 0 ? .success : .failure(message)
    }
}
