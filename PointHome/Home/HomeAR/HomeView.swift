//
//  HomeView.swift
//  PointHome
//
//  Created by Darragh King on 15/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit.UIViewController
import ARKit

class HomeView: UIViewController, HomeViewProtocol {
    
    @IBOutlet var ARSCNView: ARSCNView!
    weak var delegate: HomeViewDelegate!
    
    override func viewDidLoad() {
        delegate.didLoadARView()
        ARSCNView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
    }
    
    func startARSession(with config: ARWorldTrackingConfiguration) {
        ARSCNView.session.run(config)
    }
    
}
