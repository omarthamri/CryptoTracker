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
    @StateObject private var vm: DetailViewModel
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    private let spacing: CGFloat = 30
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
            Text("")
                    .frame(height: 150)
            overviewTitle
            Divider()
            overviewGrid
            additionalTitle
            Divider()
                additionalGrid
            }
            .padding()
        }
        .navigationTitle(vm.coin.name)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailsView(coin: dev.coin)
        }
    }
}

extension DetailsView {
    
    private var overviewTitle: some View {
        Text("Overview")
                .font(.title)
                .bold()
                .foregroundColor(Color.theme.accent)
                .frame(maxWidth: .infinity,alignment: .leading)
    }
    
    private var additionalTitle: some View {
        Text("Additional Details")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.theme.accent)
                    .frame(maxWidth: .infinity,alignment: .leading)
        
    }
    
    private var overviewGrid: some View {
        LazyVGrid(columns: columns,
                  alignment: .leading,
                  spacing: spacing,
                  pinnedViews: []) {
            ForEach(vm.overviewStatistics) { stat in
                StatisticsView(stat: stat)
            }
        }
    }
    
    private var additionalGrid: some View {
        LazyVGrid(columns: columns,
                  alignment: .leading,
                  spacing: spacing,
                  pinnedViews: []) {
            ForEach(vm.additionalStatistics) { stat in
                StatisticsView(stat: stat)
            }
        }
    }
    
}
