//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by omar thamri on 22/12/2022.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    @Published var searchText: String = ""
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$allCoins
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
