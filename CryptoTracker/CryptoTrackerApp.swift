//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by omar thamri on 19/12/2022.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
