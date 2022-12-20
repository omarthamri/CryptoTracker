//
//  Double.swift
//  CryptoTracker
//
//  Created by omar thamri on 20/12/2022.
//

import Foundation

extension Double {
    
    ///converts a double into a currency with 2 to 6 dicimal places
    /// ```
    /// Convert 1234.56 to $1.234.56
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current
        formatter.currencyCode = "usd"
        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    ///converts a double into a currency as a string with 2 to 6 dicimal places
    /// ```
    /// Convert 1234.56 to "$1.234.56"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from:  number) ?? "$0.00"
    }
    
    /// Converts number into string representation
    /// ```
    /// Convert 1.2345 into "1.23"
    ///  ```
    func numberAsString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Converts number into string representation with percent symbol
    /// ```
    /// Convert 1.2345 into "1.23%"
    ///  ```
    func asPercentString() -> String {
        return numberAsString() + "%"
    }
    
}
