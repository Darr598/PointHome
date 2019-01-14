//
//  AppProtocol.swift
//  PointHome
//
//  Created by Darragh King on 14/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit.UIViewController

protocol AppMainUserInterfaceProtocol {
    var delegate: AppMainUserInterfaceDelegate! {get set}
    
    func presentViewController(_ viewController: UIViewController)
}

protocol AppMainUserInterfaceDelegate: class {
    func UserInterfaceDidLoad()
}
