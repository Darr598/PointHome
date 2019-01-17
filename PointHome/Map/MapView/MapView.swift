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
    @IBOutlet var openARViewButton: UIButton!
    @IBOutlet var arrowView: UIImageView!
    
    weak var delegate: MapViewDelegate!

    @IBAction func findHome(_ sender: Any) {
        delegate.didTapFindHome()
    }
    
    @IBAction func showHomeInAR(_ sender: Any) {
        delegate.didTapShowHomeInAR()
    }
    
    func presentViewController(_ viewController: UIViewController ) {
        present(viewController, animated: true, completion: nil)
    }
    
    func dismissCurrentViewController() {
        dismiss(animated: true, completion: nil)
    }
    
    func placeMarkerOnMap(marker: GMSMarker) {
        marker.map = mapView
    }
    
    func panMapToLocation(_ location: CLLocationCoordinate2D, zoomLevel: Float) {
        let camera = GMSCameraPosition.camera(withLatitude: location.latitude,
                                              longitude: location.longitude,
                                              zoom: zoomLevel)
        mapView.animate(to: camera)
    }
    
    func activateARButton() {
        openARViewButton.isHidden = false
        openARViewButton.isUserInteractionEnabled = true
    }
    
    func showNudgeView() {
        arrowView.fadeOut()
    }

}

extension MapView: GMSMapViewDelegate {
    
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        delegate.didSelectLocation(location: place)
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        // TODO: Maybe check the error and handle it 
        print("Error: ", error.localizedDescription)
    }

    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        dismiss(animated: true, completion: nil)
    }

    func didRequestAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func didUpdateAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    func mapView(_ mapView: GMSMapView, didLongPressAt coordinate: CLLocationCoordinate2D) {
        delegate.didLongPressMapView()
    }
    
}
