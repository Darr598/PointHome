import Foundation
import GoogleMaps
import GooglePlaces

class MapPresenter: MapPresenterProtocol {
    
    let defaultZoomLevel: Float = 1.0
    let detailedZoomLevel: Float = 15.0
    
    weak var delegate: MapPresenterDelegate!
    var view: MapViewProtocol!

    func beginSearching() {
        let autocompleteController = GMSAutocompleteViewController()
        autocompleteController.delegate = view
        
        view.presentViewController(autocompleteController)
    }
    
    func finishSearching() {
        view.dismissCurrentViewController()
    }
    
    func pinSelectedLocationOnMap(location: GMSPlace) {
        let marker = GMSMarker()
        marker.position = location.coordinate
        marker.title = location.name
        marker.snippet = location.formattedAddress
        view.placeMarkerOnMap(marker: marker)
    }
    
    func presentARView(_ ARView: UIViewController) {
        view.presentViewController(ARView)
    }
    
    func panMapToLocation(_ location: CLLocationCoordinate2D) {
        view.panMapToLocation(location, zoomLevel: detailedZoomLevel)
    }
    
    func activateARButton() {
        view.activateARButton()
    }
    
    func showNudgeView() {
        view.showNudgeView()
    }

}
extension MapPresenter {
    
    func didTapFindHome() {
        delegate.didTapFindHome()
    }
    
    func didSelectLocation(location: GMSPlace) {
        delegate.didSelectLocation(location: location)
    }
    
    func didTapShowHomeInAR() {
        delegate.didTapShowHomeInAR()
    }
    
    func didLongPressMapView() {
        delegate.didLongPressMapView()
    }
}
