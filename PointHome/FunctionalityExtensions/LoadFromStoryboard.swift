//
//  LoadFromStoryboard.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import UIKit

extension UIViewController {
    
    class func loadFromStoryboard<T: UIViewController>(_ storyboardName: String? = nil) -> T {
        
        let className = String(describing: T.self)
        let storyboard = UIStoryboard(name: storyboardName ?? className, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: className) as! T
        return viewController
    }
}
