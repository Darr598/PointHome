//
//  MapRouter.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit.UIViewController

class MapRouter: MapRouterProtocol {
    
    var interactor: MapInteractorProtocol!
    var homeRouter: HomeRouterProtocol?

    func assembleModule() -> UIViewController{
        let assembler = MapAssembler()
        
        self.interactor = assembler.interactor
        self.interactor.delegate = self
        
        let view = assembler.view
        
        return view as! UIViewController
    }
    
    func startAR() {
        
        assert(interactor.entity.home != nil, "Should not try to point home without first selecting a location")
        
        homeRouter = HomeRouter()
        let homeView = self.homeRouter!.assembleModule(with: interactor.entity.home!)
        interactor.presentARView(homeView)
    }
    
}
extension MapRouter {
    func didTapShowHomeInAR() {
        startAR()
    }
}
