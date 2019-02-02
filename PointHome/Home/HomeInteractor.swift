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
