//
//  FriendCategoryView.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import Foundation

protocol FriendCategoryView: BaseView {
    func show(_ categories: [FriendCategory])
}
