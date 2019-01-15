//
//  MapAssembler.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit.UIViewController

struct MapAssembler {
    
    let view: MapViewProtocol
    let entity: MapEntityProtocol
    let presenter: MapPresenterProtocol
    let interactor: MapInteractorProtocol
    
    init(entity: MapEntityProtocol = MapEntity() ,presenter: MapPresenterProtocol = MapPresenter(), interactor: MapInteractorProtocol = MapInteractor()) {
        
        let view: MapView = UIViewController.loadFromStoryboard()
        
        self.view = view
        self.entity = entity
        self.presenter = presenter
        self.interactor = interactor
        
        assemble()
    }
    
    func assemble() {
        view.delegate = presenter
        presenter.delegate = interactor
        interactor.entity = entity
        interactor.presenter = presenter
        presenter.view = view 
    }
    
}
