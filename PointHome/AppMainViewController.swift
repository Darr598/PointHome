import Foundation
import UIKit
import CoreMotion

class AppMainViewController: UIViewController, AppMainUserInterfaceProtocol {
    
    weak var delegate: AppMainUserInterfaceDelegate!
    
    //Don't forget to call UserInterfaceDidLOAD in viewDidAppear to ensure the main VC
    //is in the mainVC is in the window hierarchy before you try to push the map view 
    override func viewDidAppear(_ animated: Bool) {
        delegate.UserInterfaceDidLoad()
    }
    
    func presentViewController(_ viewController: UIViewController) {
        self.present(viewController, animated: true, completion: nil)
    }
}

