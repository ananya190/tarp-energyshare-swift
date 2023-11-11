//
//  EnergyShareTabItem.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import SwiftUI

struct EnergyShareTabItem: View {
    var id: Int = 0
    @Binding var tabSelected: Int
    var body: some View {
        Button(action: {
            tabSelected = id
        },label: {
            VStack(spacing:0) {
                Image(systemName: Constants.tabBarIcons[id])
//                Text("\(Constants.tabBarNames[id])")
            }
            .foregroundColor(Color.white)
            .padding()
        }
        )
    }
}

//#Preview {
//    @State var tabSelected = 0
//    EnergyShareTabItem(tabSelected: $tabSelected)
//}
