    //
    //  SellView.swift
    //  energyshare-tarp-swift
    //
    //  Created by Ananya George on 11/7/23.
    //

import SwiftUI

struct SellView: View {
    var userSellOffers: [SellOffer] = DummyData.sellOfferList.filter({ $0.seller == "abc123"})
    var buyOffers: [BuyOffer] = DummyData.buyOfferList
    @State var update: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Sale Offers")
                    .font(.headline)
                    .padding()
                NavigationLink(destination: AddSaleOfferView(update: $update), label: {
                    HStack {
                        Spacer()
                        Text("+")
                            .font(.headline)
                        Spacer()
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                })
                .padding(.vertical, 5)
                .padding(.horizontal)
                ScrollView {
                    ForEach(userSellOffers) { sellOffer in
                        SellCard(update: $update,sellOffer: sellOffer, bestBid: buyOffers.first(where: {$0.id == sellOffer.bestBuyOfferId}) ?? BuyOffer(id: 0, buyer: "", sellOfferId: sellOffer.id, numberOfEnergyUnits: 0, price: 0))
                    }
                }
            }
        }
    }
}

#Preview {
    SellView()
}
