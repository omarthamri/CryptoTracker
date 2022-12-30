//
//  String.swift
//  CryptoTracker
//
//  Created by omar thamri on 30/12/2022.
//

import Foundation

extension String {
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[>]+>", with: "", options: .regularExpression, range: nil)
        
    }
    
}
