//
//  AppRouter.swift
//  PointHome
//
//  Created by Darragh King on 14/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit

class AppRouter: AppMainUserInterfaceDelegate {

    //Maybe don't need this stored here as this lets try a UIViewController
    var appMainViewController: AppMainUserInterfaceProtocol!
    var mapRouter: MapRouterProtocol!
    
    init(with appMainViewController: AppMainUserInterfaceProtocol) {
        self.appMainViewController = appMainViewController
        self.appMainViewController.delegate = self
    }
    
    func UserInterfaceDidLoad() {
        setupApp()
    }
    
    private func setupApp() {
        mapRouter = MapRouter()
        let mapView = mapRouter.assembleModule()
        appMainViewController.presentViewController(mapView)
    }
}