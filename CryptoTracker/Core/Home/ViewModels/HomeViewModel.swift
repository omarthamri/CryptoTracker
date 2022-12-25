//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by omar thamri on 22/12/2022.
//

import Foundation
import Combine
import SwiftUI

class HomeViewModel: ObservableObject {
    
     @Published var statistics: [StatisticModel] = [
        StatisticModel(title: "title", value: "value", percentageChange: 2),
        StatisticModel(title: "title", value: "value"),
        StatisticModel(title: "title", value: "value"),
        StatisticModel(title: "title", value: "value", percentageChange: -2)
        ]
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService()
    private var cancellables = Set<AnyCancellable>()
    @Published var searchText: String = ""
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        //dataService.$allCoins
        // updates allcoins
        $searchText.combineLatest(coinDataService.$allCoins)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
    private func filterCoins(text: String,coins: [CoinModel]) -> [CoinModel] {
        print("aaaaaaa\(coins)")
        guard !text.isEmpty else { return coins }
        let lowercasedText = text.lowercased()
        return coins.filter { coin -> Bool in
            return coin.name.lowercased().contains(lowercasedText) || coin.symbol.lowercased().contains(lowercasedText)
            || coin.id.lowercased().contains(lowercasedText)
        }
    }
    
}
