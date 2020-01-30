//
//  FriendCategoryDataStore.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

class FriendCategoryDataStore {
    
    static let instance: FriendCategoryDataStore = FriendCategoryDataStore()
    
    private init() {}
    
    func getCategories() -> [FriendCategory] {
        return [
            FriendCategory(title: "High School", orderRank: 1, icon: UIImage(systemName: "favorite.fill"), iconColor: .yellow),
            FriendCategory(title: "RUPP", orderRank: 2, icon: UIImage(systemName: "message"), iconColor: .blue),
            FriendCategory(title: "CZU", orderRank: 3, icon: UIImage(systemName: "mostViewed"), iconColor: .orange),
            FriendCategory(title: "Childhood", orderRank: 4, icon: UIImage(systemName: "mostRecent"), iconColor: .yellow)
        ]
    }
    
}
