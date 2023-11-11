//
//  PlaceBidView.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import SwiftUI

struct PlaceBidView: View {
    // minUnits, maxUnits and minPrice from the Bindable object. We're not even going to bother with error messages and stuff, for the review just hardcode. We can use a StateObject
    var minUnits: Int = 1
    var maxUnits: Int = 5
    var minPrice: Int = 1
    @State var numberOfUnits: Int = 5
    @State var price: Int = 2
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            Form {
                Section("Place your bid") {
                    HStack {
                        Stepper("Number of Units", value: $numberOfUnits, in: minUnits...maxUnits)
                        Text("\t\(numberOfUnits)")
                            .font(.headline)
                    }
                    HStack {
                        Stepper("Price", value: $price, in: minPrice...999999)
                        Text("\t\(price)")
                            .font(.headline)
                    }
                }
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Place bid")
                                .font(.headline)
                            Spacer()
                        }
                            
                    })
                    
                
            }
        }
    }
}

#Preview {
    PlaceBidView()
}
