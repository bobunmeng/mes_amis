//
//  StoryboardInitializable.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/16/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

protocol StoryboardInitializable {
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle? { get }
    
    static func makeFromStoryboard() -> Self
    static func makeFromStoryboard(with identifier: String) -> Self
}

extension StoryboardInitializable where Self: UIViewController {
    
    static var storyboardName: String {
        return String(describing: self)
    }
    
    static var storyboardBundle: Bundle? {
        return nil
    }
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    static func makeFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        return storyboard.instantiateInitialViewController() as! Self
    }
    
}
