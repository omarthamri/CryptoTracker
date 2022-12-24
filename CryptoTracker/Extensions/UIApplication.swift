//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by omar thamri on 24/12/2022.
//

import Foundation
import SwiftUI


extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    
}
