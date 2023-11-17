    //
    //  SellCard.swift
    //  energyshare-tarp-swift
    //
    //  Created by Ananya George on 11/11/23.
    //

import SwiftUI

struct SellCard: View {
    @Binding var update: Bool
    var sellOffer: SellOffer = DummyData.sellOfferList[0]
    var bestBid: BuyOffer = DummyData.buyOfferList[0]
    var body: some View {
        HStack {
            Spacer()
            VStack() {
                Text("Sale ID: \(sellOffer.id)")
                    .font(.footnote)
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Min Price: \(sellOffer.minPrice)")
                        Text("Min Units: \(sellOffer.minEnergyUnits)")
                        Text("Max Units: \(sellOffer.maxEnergyUnits)")
                    }
                    .padding()
                    .background(Color.gray)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Current Best")
                                .font(.footnote)
                            Text("Price: \(bestBid.price)")
                            Text("Units: \(bestBid.numberOfEnergyUnits)")
                        }
                    }
                    .padding()
                    .background(Color.gray)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                }
                VStack() {
                    Text("Total: \(bestBid.total)")
                        .font(.headline)
                    
                    Button(action: {
                        DummyData.buyOfferList.removeAll(where: {$0.sellOfferId == sellOffer.id})
                        // remove the sell offer from the list
                        DummyData.sellOfferList.removeAll(where: {$0.id == sellOffer.id})
                        // remove corresponding buy offers where sell offer id is this one
                        print(DummyData.sellOfferList)
                        print(DummyData.buyOfferList)
                        update.toggle()
                        
                    }, label: {
                        Text("Accept")
                            .padding()
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    })
                }
                .padding()
            }
            Spacer()
            
        }
        .padding()
        .background(Color.black)
        .foregroundStyle(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.vertical, 5)
        .padding(.horizontal)
    }
}

//#Preview {
//    SellCard()
//}
