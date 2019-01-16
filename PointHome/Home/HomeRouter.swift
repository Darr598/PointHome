//
//  HomeRouter.swift
//  PointHome
//
//  Created by Darragh King on 15/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit.UIViewController
import GooglePlaces

class HomeRouter: HomeRouterProtocol {
    var interactor: HomeInteractorProtocol!

    func assembleModule(with homeLocation: GMSPlace) -> UIViewController {
        let assembler = HomeAssembler()
        
        self.interactor = assembler.interactor
        interactor.entity.home = homeLocation
        
        assert(interactor.entity.home != nil, "Sure you have no home to go to.")
        
        let view = assembler.view
        
        return view as! UIViewController
    }
}
