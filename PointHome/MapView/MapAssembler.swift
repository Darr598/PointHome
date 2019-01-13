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
    let presenter: MapPresenterProtocol
    let interactor: MapInteractorProtocol
    
    init(presenter: MapPresenterProtocol = MapPresenter(), interactor: MapInteractorProtocol = MapInteractor()) {
        
        let view: MapView = UIViewController.loadFromStoryboard()
        
        self.view = view
        self.presenter = presenter
        self.interactor = interactor
        
        assemble()
    }
    
    func assemble() {
        view.delegate = presenter
        presenter.delegate = interactor
        interactor.presenter = presenter
        presenter.view = view 
    }
    
}
