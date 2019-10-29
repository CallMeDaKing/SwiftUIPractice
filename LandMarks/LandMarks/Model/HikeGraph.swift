//
//  HikeGraph.swift
//  LandMarks
//
//  Created by new on 2019/10/29.
//  Copyright © 2019 new. All rights reserved.
//

import SwiftUI

func rangeOfRanges<C: Collection>(_ ranges:C) -> Range<Double>
    where C.Element == Range<Double> {
        guard !ranges.isEmpty else {
            return 0..<0
        }
        let low = ranges.lazy.map{$0.lowerBound }.min()!
        let hight = ranges.lazy.map{$0.lowerBound}.min()!
        return low ..< hight
}

func magnitude(of range:Range<Double>) -> Double {
    return range.upperBound - range.lowerBound
}
    
struct HikeGraph: View {
    var body: some View {
        Text("Hello World!")
    }
}

struct HikeGraph_Previews: PreviewProvider {
    static var previews: some View {
        HikeGraph()
    }
}
