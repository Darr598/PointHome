//
//  MapContract.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//
import UIKit.UIViewController
import GoogleMaps
import GooglePlaces

//TODO Unowned 

protocol MapRouterProtocol: MapInteractorDelegate {
    var interactor: MapInteractorProtocol! {get set}
    
    func assembleModule() -> UIViewController
    func startAR()
}

protocol MapInteractorDelegate: class {
    func didTapShowHomeInAR()
}

protocol MapInteractorProtocol: MapPresenterDelegate {
    var delegate: MapInteractorDelegate! {get set}
    var presenter: MapPresenterProtocol! {get set}
    var entity: MapEntityProtocol! {get set}
    
    func presentARView(_ ARView: UIViewController)
}

protocol MapPresenterDelegate: class {
    func didTapFindHome()
    func didSelectLocation(location: GMSPlace)
    func didTapShowHomeInAR()
    func didLongPressMapView()
}

protocol MapPresenterProtocol: MapViewDelegate {
    var delegate: MapPresenterDelegate! {get set}
    var view: MapViewProtocol! {get set}
    
    func beginSearching()
    func finishSearching()
    func pinSelectedLocationOnMap(location: GMSPlace)
    func presentARView(_ ARView: UIViewController)
    func panMapToLocation(_ location: CLLocationCoordinate2D)
    func activateARButton()
    func showNudgeView()
}

protocol MapViewDelegate: class {
    func didTapFindHome()
    func didSelectLocation(location: GMSPlace)
    func didTapShowHomeInAR()
    func didLongPressMapView()
}

protocol MapViewProtocol: GMSAutocompleteViewControllerDelegate {
    var delegate: MapViewDelegate! {get set}
    
    func presentViewController(_ viewController: UIViewController )
    func dismissCurrentViewController()
    func placeMarkerOnMap(marker: GMSMarker)
    func panMapToLocation(_ location: CLLocationCoordinate2D, zoomLevel: Float)
    func activateARButton()
    func showNudgeView()
}

protocol MapEntityProtocol: class {
    var home: GMSPlace? {get set}
}
