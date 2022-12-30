//
//  LaunchView.swift
//  CryptoTracker
//
//  Created by omar thamri on 30/12/2022.
//

import SwiftUI

struct LaunchView: View {
    @State private var loadingText: String = "Loading your portfolio..."
    @State private var showLoadingText: Bool = false
    var body: some View {
        ZStack {
            Color.launchTheme.background
                .ignoresSafeArea()
            Image("logo-transparent")
                .resizable()
                .frame(width: 100, height: 100)
            ZStack {
                if showLoadingText {
                    Text(loadingText)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.launchTheme.accent)
                        .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: 70)
        }
        .onAppear{
            showLoadingText.toggle()
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
