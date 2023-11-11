//
//  BuyOffer.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import Foundation

struct BuyOffer: Identifiable {
    var id: Int
    var buyer: String
    var sellOfferId: Int
    var numberOfEnergyUnits: Int
    var price: Int
    
    var total: Int {
        numberOfEnergyUnits * price
    }
}
