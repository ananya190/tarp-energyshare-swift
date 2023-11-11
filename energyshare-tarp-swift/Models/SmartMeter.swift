//
//  SmartMeter.swift
//  energyshare-tarp-swift
//
//  Created by Ananya George on 11/11/23.
//

import Foundation

struct SmartMeter: Identifiable, Codable {
    var id: UUID
    var name: String
    var coordinates: Coordinates
    var energyGenerated: Double
    var energyToSpare: Double
}

extension SmartMeter {
    struct Coordinates: Codable {
        var latitude: Double
        var longitude: Double
    }
}
