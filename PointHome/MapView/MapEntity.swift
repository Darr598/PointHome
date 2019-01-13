//
//  MapEntity.swift
//  PointHome
//
//  Created by Darragh King on 12/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

struct pointGeoLocation {
    var latitude: Double
    var longitude: Double
}

class MapEntity: MapEntityProtocol {
    var pointLocation: pointGeoLocation?
}
