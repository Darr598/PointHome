import Foundation
import UIKit.UIViewController
import ARCL
import CoreLocation

class HomeView: UIViewController, HomeViewProtocol {
    
    weak var delegate: HomeViewDelegate!
    
    override func viewDidLoad() {
        delegate.didLoadARView()
    }
    
    func AddARView(ARView: SceneLocationView) {
        ARView.run()
        view.addSubview(ARView)
        ARView.frame = view.bounds
    }
    
}
