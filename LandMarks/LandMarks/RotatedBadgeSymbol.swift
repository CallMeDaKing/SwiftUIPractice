//
//  RotatedBadgeSymbol.swift
//  LandMarks
//
//  Created by new on 2019/10/28.
//  Copyright © 2019 new. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle : Angle

    var body: some View {
        BadgeSymbol()
        .padding(-60)
        .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
