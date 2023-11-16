    //
    //  AddSaleOfferView.swift
    //  energyshare-tarp-swift
    //
    //  Created by Ananya George on 11/11/23.
    //

import SwiftUI

struct AddSaleOfferView: View {
    
    @State var minUnits: Int = 1
    @State var maxUnits: Int = 1
    @State var minPrice: Int = 1
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Form {
                Section("Create a Sale Offer") {
                    HStack {
                        Stepper("Minimum Number of Units", value: $minUnits, in: 1...100)
                        Text("\t\(minUnits)")
                            .font(.headline)
                    }
                    HStack {
                        Stepper("Maximum Number of Units", value: $maxUnits, in: minUnits...100)
                        Text("\t\(maxUnits)")
                            .font(.headline)
                    }
                    HStack {
                        Stepper("Minimum Price", value: $minPrice, in: 1...999999)
                        Text("\t\(minPrice)")
                            .font(.headline)
                    }
                }
                Button(action: {
                    DummyData.sellOfferList.append(SellOffer(id: DummyData.sellOfferList.count + 1, seller: "xyz123", minEnergyUnits: minUnits, maxEnergyUnits: maxUnits, minPrice: minPrice, bestBuyOfferId: 0, buyOfferIds: [], sold: false))
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack {
                        Spacer()
                        Text("Create Sale Offer")
                            .font(.headline)
                        Spacer()
                    }
                    
                })
                
                
            }
        }
    }
    
}

#Preview {
    AddSaleOfferView()
}
