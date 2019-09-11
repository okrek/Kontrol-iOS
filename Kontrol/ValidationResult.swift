//
//  ValidationResult.swift
//  Kontrol
//
//  Created by Maxim Pisarenko on 28/12/2017.
//  Copyright © 2017 Okrek. All rights reserved.
//

import Foundation

public enum ValidationResult: Equatable {
    case success
    case failure(String)
}

extension ValidationResult {
    public func isFailure() -> Bool {
        if case .failure = self { return true } else { return false }
    }

    public func isSuccess() -> Bool {
        if case .success = self { return true } else { return false }
    }
}
