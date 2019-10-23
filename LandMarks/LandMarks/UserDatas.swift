
//
//  UserDatas.swift
//  LandMarks
//
//  Created by new on 2019/10/22.
//  Copyright © 2019 new. All rights reserved.
//

import SwiftUI
import Combine

final class UserDatas : ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}

