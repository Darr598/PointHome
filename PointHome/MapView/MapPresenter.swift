//
//  MapPresenter.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation

class MapPresenter: MapPresenterProtocol {
    weak var delegate: MapPresenterDelegate!
    
    var view: MapViewProtocol!
}
