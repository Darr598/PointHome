//
//  HomeView.swift
//  PointHome
//
//  Created by Darragh King on 15/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit.UIViewController
import ARCL
import CoreLocation

class HomeView: UIViewController, HomeViewProtocol {
    
    weak var delegate: HomeViewDelegate!
    
    override func viewDidLoad() {
        delegate.didLoadARView()
    }
    
    func AddARView(ARView: SceneLocationView) {
        ARView.run()
        view.addSubview(ARView)
        ARView.frame = view.bounds
    }
    
}
