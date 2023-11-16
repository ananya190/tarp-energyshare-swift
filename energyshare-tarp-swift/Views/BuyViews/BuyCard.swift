    //
    //  BuyCard.swift
    //  energyshare-tarp-swift
    //
    //  Created by Ananya George on 11/7/23.
    //

import SwiftUI

struct BuyCard: View {
    
    var sellOffer: SellOffer = DummyData.sellOfferList[0]
    var bestBuyOffer: BuyOffer?
    @State var placeBid: Bool = false
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                VStack {
                    Text("Current Best")
                        .font(.footnote)
                    VStack(alignment: .leading) {
                        Text("Price: \(bestBuyOffer?.price ?? 0)")
                        Text("#: \(bestBuyOffer?.numberOfEnergyUnits ?? 0)")
                    }
                }
                .padding()
                .background(Color.gray)
                .opacity(0.8)
                .clipShape(RoundedRectangle(cornerRadius:15))
                Text("Total to beat: \(bestBuyOffer?.total ?? 0)")
                NavigationLink(destination: PlaceBidView(sellId: sellOffer.id,minUnits: sellOffer.minEnergyUnits, maxUnits: sellOffer.maxEnergyUnits, minPrice: sellOffer.minPrice, numberOfUnits: sellOffer.minEnergyUnits, price: sellOffer.minPrice) , label: {
                        // Button(action: {
                        //                }, label: {
                    Text("Bid")
                        .font(.headline)
                        .padding()
                        .foregroundStyle(Color.white)
                        .background(Color.green)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        //                })
                })
                Spacer()
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Min #: \(sellOffer.minEnergyUnits)")
                    Text("Max #: \(sellOffer.maxEnergyUnits)")
                    Text("Max Price: \(sellOffer.minPrice)")
                    
                }
                .foregroundStyle(Color.white)
            }
        }
        .padding()
        .foregroundStyle(Color.white)
        .background(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.vertical, 5)
        .padding(.horizontal)
        
    }
}

#Preview {
    BuyCard()
}
