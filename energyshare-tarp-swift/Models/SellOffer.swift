//
//  SellOffer.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import Foundation

struct SellOffer: Identifiable {
    var id: Int
    var seller: String
    var minEnergyUnits: Int
    var maxEnergyUnits: Int
    var minPrice: Int
    var bestBuyOfferId: Int
    var buyOfferIds: [Int]
    var sold: Bool
}
