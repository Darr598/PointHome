import Foundation
import ARCL
import CoreLocation
import GooglePlaces

class HomePresenter: HomePresenterProtocol {
    
    weak var delegate: HomePresenterDelegate!
    var view: HomeViewProtocol!
    let defaultAltitude: CLLocationDistance = 300
    
    func pointHome(home: GMSPlace) {
        
        let location = CLLocation(coordinate: home.coordinate, altitude: defaultAltitude)
        let image = UIImage(named: "home")!
        
        let annotationNode = LocationAnnotationNode(location: location, image: image)
        let ARView = SceneLocationView()
        
        ARView.addLocationNodeWithConfirmedLocation(locationNode: annotationNode)
        view.AddARView(ARView: ARView)
    }
}
extension HomePresenter {
    func didLoadARView() {
        delegate.didLoadARView()
    }
}
