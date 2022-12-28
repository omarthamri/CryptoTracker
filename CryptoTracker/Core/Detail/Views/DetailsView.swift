//
//  DetailsView.swift
//  CryptoTracker
//
//  Created by omar thamri on 28/12/2022.
//

import SwiftUI

struct DetailLoadingView: View {
    @Binding var coin: CoinModel?
    var body: some View {
        ZStack {
            if let coin = coin {
                DetailsView(coin: coin)
            }
        }
    }
}


struct DetailsView: View {
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        print("initialize coin \(coin.name)")
    }
    
    var body: some View {
        Text(coin.name)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(coin: dev.coin)
    }
}
