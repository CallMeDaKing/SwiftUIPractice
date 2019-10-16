//
//  CircleImages.swift .swift
//  LandMarks
//
//  Created by new on 2019/10/15.
//  Copyright © 2019 new. All rights reserved.
//

import SwiftUI

struct CircleImages: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImages_swift__Previews: PreviewProvider {
    static var previews: some View {
        CircleImages(image: Image("turtlerock"))
    }
}
