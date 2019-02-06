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
