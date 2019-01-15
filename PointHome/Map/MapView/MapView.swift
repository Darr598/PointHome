//
//  File.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class MapView: UIViewController, MapViewProtocol {

    @IBOutlet var mapView: GMSMapView!
    
    weak var delegate: MapViewDelegate!
    
    @IBAction func findHome(_ sender: Any) {
        delegate.didTapFindHome()
    }
    
    func presentViewController(_ viewController: UIViewController ) {
        present(viewController, animated: true, completion: nil)
    }
    
    func dismissCurrentViewController() {
        dismiss(animated: true, completion: nil)
    }

}

extension MapView {
    
    // Handle the user's selection.
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        delegate.didSelectLocation(location: place)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        // TODO: handle the error.
        print("Error: ", error.localizedDescription)
    }

    // User canceled the operation.
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    // Turn the network activity indicator on and off again.
    func didRequestAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func didUpdateAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
}
