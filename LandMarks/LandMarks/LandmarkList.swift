//
//  LandmarkList.swift
//  LandMarks
//
//  Created by new on 2019/10/16.
//  Copyright © 2019 new. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData){ Landmark in
                NavigationLink(destination: LandmarkDetail(landmark: Landmark)){
                    LandmarkRow(landmark: Landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
