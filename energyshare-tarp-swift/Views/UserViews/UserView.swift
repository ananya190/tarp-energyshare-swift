    //
    //  UserView.swift
    //  energyshare-tarp-swift
    //
    //  Created by Ananya George on 11/7/23.
    //

import SwiftUI

struct UserView: View {
    @EnvironmentObject var metaMaskRepo: MetaMaskRepo
    @State var walletConnected: Bool = false
    @State var metersConnected: [SmartMeter] = []
    var body: some View {
        VStack {
            Image("energyshare_logo")
                .resizable()
                .scaledToFit()
                .padding(40)
            Spacer()
            
            if !metaMaskRepo.ethAddress.isEmpty {
                VStack {
                    Text("Address: \(metaMaskRepo.ethAddress)")
                        .fontWeight(.bold)
                        .padding()
                    Button(action: {
                    }, label: {
                        Text("Disconnect your wallet")
                    })
                    .buttonStyle(.borderedProminent)
                }
                
            } else {
                Button(action: {
                    metaMaskRepo.connectToDapp()
                }, label: {
                    Text("Connect your wallet")
                })
                .buttonStyle(.borderedProminent)
            }
            
            if metersConnected.isEmpty {
                Button(action: {
                    metersConnected.append(SmartMeter(id: UUID(), name: "Meter 1", coordinates: SmartMeter.Coordinates(latitude: 100, longitude: 100), energyGenerated: 13, energyToSpare: 6))
                }, label: {
                    Text("Add meter")
                })
            } else {
                ForEach($metersConnected) { meter in
                    Text("\(meter.id)")
                }
                Button(action: {
                    metersConnected.append(SmartMeter(id: UUID(), name: "Meter x", coordinates: SmartMeter.Coordinates(latitude: 100, longitude: 100), energyGenerated: 13, energyToSpare: 6))
                }, label: {
                    Text("Add meter")
                })
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    UserView()
}
