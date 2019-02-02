import Foundation
import UIKit

class AppRouter: AppMainUserInterfaceDelegate {

    //Maybe don't need this stored here as this lets try a UIViewController
    var appMainViewController: AppMainUserInterfaceProtocol!
    var mapRouter: MapRouterProtocol!
    
    init(with appMainViewController: AppMainUserInterfaceProtocol) {
        self.appMainViewController = appMainViewController
        self.appMainViewController.delegate = self
    }
    
    private func setupApp() {
        mapRouter = MapRouter()
        let mapView = mapRouter.assembleModule()
        appMainViewController.presentViewController(mapView)
    }
}

extension AppRouter {
    func UserInterfaceDidLoad() {
        setupApp()
    }
}
