//
//  HomeRouter.swift
//  PointHome
//
//  Created by Darragh King on 15/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit.UIViewController

class HomeRouter: HomeRouterProtocol {
    var interactor: HomeInteractorProtocol!

    func assembleModule() -> UIViewController {
        let assembler = HomeAssembler()
        
        self.interactor = assembler.interactor
        
        let view = assembler.view
        
        return view as! UIViewController
    }
}
