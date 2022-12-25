//
//  PortfolioView.swift
//  CryptoTracker
//
//  Created by omar thamri on 25/12/2022.
//

import SwiftUI

struct PortfolioView: View {
    @EnvironmentObject private var vm: HomeViewModel
    @State private var selectedCoin: CoinModel? = nil
    @State private var quantityText: String = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    SearchBarView(searchText: $vm.searchText)
                    CoinLogoList
                    if selectedCoin != nil {
                        VStack(spacing: 20) {
                            HStack {
                                Text("Current price of \(selectedCoin?.symbol.uppercased() ?? ""):")
                                Spacer()
                                Text(selectedCoin?.currentPrice.asCurrencyWith6Decimals() ?? "")
                            }
                            Divider()
                            HStack {
                                Text("Amount in your portfolio:")
                                Spacer()
                                TextField("Ex: 1.4", text: $quantityText)
                                    .multilineTextAlignment(.trailing)
                                    .keyboardType(.decimalPad)
                            }
                            Divider()
                            HStack {
                                Text("Current Value:")
                            }
                        }
                    }
                }
            }
            .navigationTitle("Edit Portfolio")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            })
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .environmentObject(dev.homeVM)
    }
}


extension PortfolioView {
    
    private var CoinLogoList: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 10) {
                ForEach(vm.allCoins) { coin in
                    CoinLogoView(coin: coin)
                        .frame(width: 75)
                        .padding()
                        .onTapGesture {
                            withAnimation(.easeIn) {
                                selectedCoin = coin
                            }
                        }
                        .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedCoin?.id == coin.id ? Color.theme.green : Color.clear,lineWidth: 1)
                        )
                        .padding(.vertical,4)
                        .padding(.leading)
                }
            }
        }
    }
    
    
    
}
