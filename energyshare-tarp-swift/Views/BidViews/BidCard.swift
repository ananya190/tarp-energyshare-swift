    //
    //  BidCard.swift
    //  energyshare-tarp-swift
    //
    //  Created by Ananya George on 11/11/23.
    //

import SwiftUI

struct BidCard: View {
    var bid: BuyOffer = BuyOffer(id: 0, buyer: "hi", sellOfferId: 0, numberOfEnergyUnits: 1, price: 2)
    var body: some View {
        VStack {
            Text("Sale ID: \(bid.sellOfferId)")
            HStack {
                Text("Price per Unit: \(bid.price)")
                Text("Number of Units: \(bid.numberOfEnergyUnits)")
            }
            Text("Total Price: \(bid.total)")
                .font(.headline)
        }
        .padding()
        .background(Color.black)
        .foregroundStyle(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    BidCard()
}
