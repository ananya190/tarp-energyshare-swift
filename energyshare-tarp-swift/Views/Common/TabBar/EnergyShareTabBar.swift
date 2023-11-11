//
//  EnergyShareTabBar.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/7/23.
//

import SwiftUI

struct EnergyShareTabBar: View {
    @Binding var tabSelected: Int
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(0..<Constants.tabBarIcons.count) { i in
                    HStack {
                        Spacer()
                        EnergyShareTabItem(id: i, tabSelected: $tabSelected)
                        Spacer()
                    }
                    .background(tabSelected == i ? Color.black : Color.clear)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .padding()
                    .animation(Animation.snappy, value: tabSelected)
                }
            }
            Text("EnergyShare")
                .padding(.bottom)
                .foregroundStyle(Color.white)
        }
            .background(Color.gray.ignoresSafeArea(edges: .bottom))
//            .clipShape(RoundedRectangle(cornerRadius:25))
    }
}

//#Preview {
//    EnergyShareTabBar()
//}
