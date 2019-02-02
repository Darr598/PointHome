import Foundation
import GooglePlaces

class MapInteractor: MapInteractorProtocol {
    
    weak var delegate: MapInteractorDelegate!
    var entity: MapEntityProtocol!
    var presenter: MapPresenterProtocol!

    func presentARView(_ ARView: UIViewController) {
        presenter.presentARView(ARView)
    }
    
}
extension MapInteractor {
    
    func didTapFindHome() {
        presenter.beginSearching()
    }
    
    func didSelectLocation(location: GMSPlace) {
        entity.home = location
    
        presenter.finishSearching()
        presenter.pinSelectedLocationOnMap(location: location)
        presenter.panMapToLocation(location.coordinate)
        presenter.activateARButton()
    }
    
    func didTapShowHomeInAR() {
        delegate.didTapShowHomeInAR()
    }
    
    func didLongPressMapView() {
        presenter.showNudgeView()
    }
    
}
