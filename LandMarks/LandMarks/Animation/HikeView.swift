//
//  HikeView.swift
//  LandMarks
//
//  Created by new on 2019/10/29.
//  Copyright © 2019 new. All rights reserved.
//

import SwiftUI

struct HikeView: View {
    
    var hike : Hike
    @State private var showDetail = false
    
    var transition : AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing).combined(with: .opacity)
        let removal = AnyTransition.scale.combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
    
    var body: some View {
//        VStack {
//            HStack {
//
//            }
//        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        HikeView()
    }
}
