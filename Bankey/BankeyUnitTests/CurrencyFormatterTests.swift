//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Leandro Guimarães on 09/06/25.
//

import Foundation
import XCTest

@testable import Bankey

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "$ 929.466")
        XCTAssertEqual(result.1, "23")
    }
    
    // Challenge: You write
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "R$ 929.466,23")
    }

    // Challenge: You write
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "R$ 0,00")
    }
}
