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
    func didSelectLocation()
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
}

protocol MapPresenterProtocol: MapViewDelegate {
    var delegate: MapPresenterDelegate! {get set}
    var view: MapViewProtocol! {get set}
    
    func beginSearching()
    func finsihSearching()
    func presentARView(_ ARView: UIViewController)
}

protocol MapViewDelegate: class {
    func didTapFindHome()
    func didSelectLocation(location: GMSPlace)
}

protocol MapViewProtocol: GMSAutocompleteViewControllerDelegate {
    var delegate: MapViewDelegate! {get set}
    
    func presentViewController(_ viewController: UIViewController )
    func dismissCurrentViewController()
}

protocol MapEntityProtocol: class {
    var home: GMSPlace? {get set}
}
