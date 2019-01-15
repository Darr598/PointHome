//
//  HomeContract.swift
//  PointHome
//
//  Created by Darragh King on 15/01/2019.
//  Copyright © 2019 Darragh King. All rights reserved.
//

import Foundation
import UIKit.UIViewController
import ARKit

protocol HomeRouterProtocol: HomeInteractorDelegate {
    var interactor: HomeInteractorProtocol! {get set}
    
    func assembleModule() -> UIViewController
}

protocol HomeInteractorDelegate: class {
    
}

protocol HomeInteractorProtocol: HomePresenterDelegate {
    var delegate: HomeInteractorDelegate! {get set}
    var entity: HomeEntityProtocol! {get set}
    var presenter: HomePresenterProtocol! {get set}
}

protocol HomePresenterDelegate: class {
    func didLoadARView()
}

protocol HomePresenterProtocol: HomeViewDelegate {
    var delegate: HomePresenterDelegate! {get set}
    var view: HomeViewProtocol! {get set}
    
    func startARSession(with config: ARWorldTrackingConfiguration)
}

protocol HomeViewDelegate: class {
    func didLoadARView()
}

protocol HomeViewProtocol: class {
    var delegate: HomeViewDelegate! {get set}
    
    func startARSession(with config: ARWorldTrackingConfiguration)
}

protocol HomeEntityProtocol: class {
    var ARConfig: ARWorldTrackingConfiguration! {get set}
}
