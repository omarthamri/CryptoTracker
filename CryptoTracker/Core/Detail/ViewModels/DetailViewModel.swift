//
//  DetailViewModel.swift
//  CryptoTracker
//
//  Created by omar thamri on 29/12/2022.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { (returnedCoins) in
                print("detailscoins")
                print(returnedCoins)
            }
            .store(in: &cancellables)
        
    }
    
    
}
