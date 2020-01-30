//
//  String+Extrension.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/30/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
