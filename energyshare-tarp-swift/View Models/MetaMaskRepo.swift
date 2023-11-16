//
//  MetaMaskRepo.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/16/23.
//

import Foundation
import Combine
import metamask_ios_sdk
import web3swift
import Web3Core

class MetaMaskRepo: ObservableObject {
    @Published private var ethereum = MetaMaskSDK.shared.ethereum
    
    @Published var connectionStatus = "Offline"
    @Published var ethAddress = ""
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        
    }
    
    private func observeConnectionStatus() {
        
        ethereum.$connected
            .sink { [weak self] isConnected in
                self?.connectionStatus = isConnected ? "Connected" : "Disconnected"
            }
            .store(in: &cancellables)
        
    }
    
    // balance
    // code to get balance
    
    
    private let dappName = "Dub Dapp"
    private let dappUrl = "https://dubdapp.com"
    
    func connectToDapp() {
        let dapp = Dapp(name: dappName, url: dappUrl)
        ethereum.connect(dapp)?
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print("Connection error: \(error)")
                default:
                    break
                }
            }, receiveValue: { result in
                print("Connection result: \(result)")
                DispatchQueue.main.async {
                    self.ethAddress = self.ethereum.selectedAddress
                }
            })
            .store(in: &cancellables)
    }
}
