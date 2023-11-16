//
//  DummyData.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import Foundation

struct DummyData {
    static var sellOfferList: [SellOffer] = [
        SellOffer(id: 1, seller: "abc123", minEnergyUnits: 1, maxEnergyUnits: 5, minPrice: 2, bestBuyOfferId: 3, buyOfferIds: [1,3], sold: false),
        SellOffer(id: 2, seller: "bcd234", minEnergyUnits: 1, maxEnergyUnits: 5, minPrice: 1, bestBuyOfferId: 4, buyOfferIds: [2,4], sold: false),
        SellOffer(id: 3, seller: "abc123", minEnergyUnits: 1, maxEnergyUnits: 5, minPrice: 2, bestBuyOfferId: 0, buyOfferIds: [], sold: false)
    ]
    
    static var buyOfferList: [BuyOffer] = [
        BuyOffer(id: 1, buyer: "xyz123", sellOfferId: 1, numberOfEnergyUnits: 2, price: 2),
        BuyOffer(id: 2, buyer: "xyz123", sellOfferId: 2, numberOfEnergyUnits: 2, price: 1),
        BuyOffer(id: 3, buyer: "xyz456", sellOfferId: 1, numberOfEnergyUnits: 2, price: 3),
        BuyOffer(id: 4, buyer: "xyz456", sellOfferId: 2, numberOfEnergyUnits: 2, price: 2)
//        BuyOffer(id: 5, buyer: "xyz123", sellOfferId: 3, numberOfEnergyUnits: 2, price: 2)
    ]
}
