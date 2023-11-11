//
//  ContentView.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelected: Int = 0
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    switch(tabSelected) {
                    case 0:
                        BidView()
                    case 1:
                        BuyView()
                    case 2:
                        SellView()
                    case 3:
                        UserView()
                    default:
                        UserView()
                    }
                }
                .padding()
                Spacer()
                EnergyShareTabBar(tabSelected: $tabSelected)
            }
        }
    }
}

#Preview {
    ContentView()
}
