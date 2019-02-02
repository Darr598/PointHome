import Foundation
import UIKit.UIViewController
import ARCL
import GooglePlaces

protocol HomeRouterProtocol: HomeInteractorDelegate {
    var interactor: HomeInteractorProtocol! {get set}
    
    func assembleModule(with homeLocation: GMSPlace) -> UIViewController
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
    
    func pointHome(home: GMSPlace)

}

protocol HomeViewDelegate: class {
    func didLoadARView()
}

protocol HomeViewProtocol: class {
    var delegate: HomeViewDelegate! {get set}
    
    func AddARView(ARView: SceneLocationView)

}

protocol HomeEntityProtocol: class {
    var home: GMSPlace! {get set}
}
