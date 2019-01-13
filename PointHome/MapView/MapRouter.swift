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

    func assembleModule() -> UIViewController{
        let assembler = MapAssembler()
        
        self.interactor = assembler.interactor
        
        let view = assembler.view
        
        return view as! UIViewController
    }
    
    
}
