//
//  Hike.swift
//  LandMarks
//
//  Created by new on 2019/10/29.
//  Copyright © 2019 new. All rights reserved.
//

import SwiftUI

struct Hike: Codable, Hashable, Identifiable {
    
    var name : String
    var id   : Int
    var distance : Double
    var difficulty : Int
    var observations : [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText : String {
        return Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation : Codable, Hashable {
        var distanceFromStart : Double
        var elevation : Range<Double>
        var pace : Range<Double>
        var heartRate : Range<Double>
    }
}
