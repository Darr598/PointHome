//
//  HomePresenter.swift
//  PointHome
//
//  Created by Darragh King on 15/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import ARKit

class HomePresenter: HomePresenterProtocol {
    
    weak var delegate: HomePresenterDelegate!
    var view: HomeViewProtocol!
    
    func didLoadARView() {
        delegate.didLoadARView()
    }
    
    func startARSession(with config: ARWorldTrackingConfiguration) {
        view.startARSession(with: config)
    }
    
}
