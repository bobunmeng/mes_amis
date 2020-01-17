//
//  FriendCategoryPresenter.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import Foundation

class FriendCategoryPresenter {
    
    unowned let view: FriendCategoryView
    
    public init(_ view: FriendCategoryView) {
        self.view = view
    }
    
    func fetchCategories() {
        let categories = FriendCategoryDataStore.instance.getCategories()
        
        self.view.show(categories)
    }
    
}
