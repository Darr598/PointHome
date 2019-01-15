//
//  MapPresenter.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import GoogleMaps
import GooglePlaces

class MapPresenter: MapPresenterProtocol {
    
    let defaultZoomLevel: Float = 6.0
    
    weak var delegate: MapPresenterDelegate!
    var view: MapViewProtocol!
    
    func didTapFindHome() {
        delegate.didTapFindHome()
    }
    
    func didSelectLocation(location: GMSPlace) {
        delegate.didSelectLocation(location: location)
    }
    
    func beginSearching() {
        let autocompleteController = GMSAutocompleteViewController()
        autocompleteController.delegate = view
        
        view.presentViewController(autocompleteController)
    }
    
    func finsihSearching() {
        view.dismissCurrentViewController()
    }
    
    func presentARView(_ ARView: UIViewController) {
        view.presentViewController(ARView)
    }

}
