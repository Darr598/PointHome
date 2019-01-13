//
//  File.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import UIKit
import GoogleMaps

class MapView: UIViewController, MapViewProtocol {

    @IBOutlet var mapView: GMSMapView!
    weak var delegate: MapViewDelegate!

}
