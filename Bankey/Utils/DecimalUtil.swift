//
//  DecimalUtil.swift
//  Bankey
//
//  Created by Leandro Guimarães on 07/06/25.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
