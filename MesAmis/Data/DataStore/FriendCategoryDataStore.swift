//
//  FriendCategoryDataStore.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import Foundation

class FriendCategoryDataStore {
    
    static let instance: FriendCategoryDataStore = FriendCategoryDataStore()
    
    private init() {}
    
    func getCategories() -> [FriendCategory] {
        return [
            FriendCategory(title: "High School", orderRank: 1, icon: nil, color: .yellow),
            FriendCategory(title: "RUPP", orderRank: 2, icon: nil, color: .blue),
            FriendCategory(title: "CZU", orderRank: 3, icon: nil, color: .orange),
            FriendCategory(title: "Childhood", orderRank: 4, icon: nil, color: .yellow)
        ]
    }
    
}
