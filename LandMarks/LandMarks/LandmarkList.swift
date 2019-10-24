//
//  LandmarkList.swift
//  LandMarks
//
//  Created by new on 2019/10/16.
//  Copyright © 2019 new. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject private var userData: UserData

    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("hello swiftUI open")
                }
                
                ForEach (userData.landmarks){ Landmark in
                    if Landmark.isFavorite || !self.userData.showFavoritesOnly {
                    NavigationLink(destination: LandmarkDetail(landmark: Landmark)){
                        LandmarkRow(landmark: Landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"],id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue:deviceName))
                .previewDisplayName(deviceName)
        }
         .environmentObject(UserData())
    }
}
