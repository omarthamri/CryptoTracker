//
//  SettingsView.swift
//  CryptoTracker
//
//  Created by omar thamri on 30/12/2022.
//

import SwiftUI

struct SettingsView: View {
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/channel/UC6RBQh09OZc4vF892_JoGJg")!
    let coffeeURL = URL(string: "https://www.buymecoffee.com/nicksarlo")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://github.com/omarthamri")!
    
    var body: some View {
        NavigationView {
            List {
                swiftuithinkingSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var swiftuithinkingSection: some View {
        
        Section(header: Text("SwiftUI Thinking")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made following a swiftuithinking course. It uses MVVM architecture, combine and coreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe to youtube 🥳", destination: youtubeURL)
            Link("Support this coffee addiction ☕️", destination: coffeeURL)
        }
    }
    
    private var coinGeckoSection: some View {
        
        Section(header: Text("Coin Gecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency that comes from this api comes from a free api coingecko! Prices maybe slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit Coingecko 🥳", destination: coingeckoURL)
            
        }
    }
    
    private var developerSection: some View {
        
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("me")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Omar Thamri. It uses SwiftUI and is written 100% in swift. The project benefits from multithreading, publishers/subscribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit my github account 🥳", destination: personalURL)
            
        }
    }
    
    private var applicationSection: some View {
        
        Section(header: Text("Developer")) {
            Link("Terms of service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn more", destination: defaultURL)
            
        }
    }
    
}
