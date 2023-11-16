//
//  BidView.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import SwiftUI

struct BidView: View {
    var userBuyOffers: [BuyOffer] = DummyData.buyOfferList.filter( {$0.buyer == "abc123"})
    var body: some View {
        VStack {
            Text("Bids")
                .font(.headline)
                .padding()
        }
        .onAppear(perform: {
            print(userBuyOffers)
        })
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
