//
//  MapInteractor.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import GooglePlaces

class MapInteractor: MapInteractorProtocol {
    
    weak var delegate: MapInteractorDelegate!
    var entity: MapEntityProtocol!
    var presenter: MapPresenterProtocol!
    
    func didTapFindHome() {
        presenter.beginSearching()
    }
    
    func didSelectLocation(location: GMSPlace) {
        entity.home = location
        presenter.finsihSearching()
        delegate.didSelectLocation()
    }
    
    func presentARView(_ ARView: UIViewController) {
        presenter.presentARView(ARView)
    }
    
}
