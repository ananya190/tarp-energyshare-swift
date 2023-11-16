    //
    //  BuyView.swift
    //  energyshare-tarp-swift
    //
    //  Created by Ananya George on 11/7/23.
    //

import SwiftUI

struct BuyView: View {
    var sellOfferList: [SellOffer] = DummyData.sellOfferList.filter({ $0.seller != "abc123"})
    var buyOfferList: [BuyOffer] = DummyData.buyOfferList
    var body: some View {
        NavigationStack {
            VStack {
                Text("Buy View")
                    .font(.headline)
                ScrollView {
                    ForEach(sellOfferList) { sellOffer in
                        BuyCard(sellOffer: sellOffer, bestBuyOffer: sellOffer.bestBuyOfferId > 0 ? buyOfferList.first(where: {$0.id == sellOffer.bestBuyOfferId}) : nil)
                    }
                }
            }
        }
    }
}

#Preview {
    BuyView()
}
