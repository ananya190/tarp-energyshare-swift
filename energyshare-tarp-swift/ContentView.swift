//
//  ContentView.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelected: Int = 3
    @StateObject var metaMaskRepo = MetaMaskRepo()
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    switch(tabSelected) {
                    case 0:
                        BidView()
                            .environmentObject(metaMaskRepo)
                    case 1:
                        BuyView()
                            .environmentObject(metaMaskRepo)
                    case 2:
                        SellView()
                            .environmentObject(metaMaskRepo)
                    case 3:
                        UserView()
                            .environmentObject(metaMaskRepo)
                    default:
                        UserView()
                            .environmentObject(metaMaskRepo)
                    }
                }
                .padding()
                Spacer()
                EnergyShareTabBar(tabSelected: $tabSelected)
            }
                .background(Color.white)
                .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    ContentView()
}
