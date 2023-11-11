//
//  BidView.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import SwiftUI

struct BidView: View {
    var userBuyOffers: [BuyOffer] = DummyData.buyOfferList.filter( {$0.buyer == "xyz123"})
    var body: some View {
        VStack {
            Text("Bids")
                .font(.headline)
                .padding()
        }
        ScrollView {
            ForEach(userBuyOffers) { buyOffer in
                Spacer()
                BidCard(bid: buyOffer)
                Spacer()
            }
        }
    }
}

#Preview {
    BidView()
}
