import UIKit

protocol Imigable: Partable {
    var image: UIImage { get }
    var layer: CALayer { get }
    var selected: SelectStatus { get set }
}
