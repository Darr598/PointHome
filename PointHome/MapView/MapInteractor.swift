//
//  MapInteractor.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation

class MapInteractor: MapInteractorProtocol {
    weak var delegate: MapInteractorDelegate!
    
    var presenter: MapPresenterProtocol!

}
