//
//  HomeInteractor.swift
//  PointHome
//
//  Created by Darragh King on 15/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation

class HomeInteractor: HomeInteractorProtocol {
    
    weak var delegate: HomeInteractorDelegate!
    var entity: HomeEntityProtocol!
    var presenter: HomePresenterProtocol!

}
extension HomeInteractor {
    func didLoadARView() {
        presenter.pointHome(home: entity.home)
    }
}
