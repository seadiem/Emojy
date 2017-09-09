import UIKit

struct PartTemp {
    enum State {
        case nonselected
        case selected
    }
    let image: UIImage
    let layer: CALayer
    var date: Date
    var state: State
    
    init(image: UIImage) {
        self.image = image
        layer = CALayer()
        date = Date()
        state = .selected
        setup()
    }
}

extension PartTemp {
    func setup() {
        layer.contents = image.cgImage!
        layer.frame = CGRect(x: 100, y: 100, width: image.size.width / 2, height: image.size.height / 2)
    }
}

extension PartTemp: Equatable {
    static func == (lhs: PartTemp, rhs: PartTemp) -> Bool {
        return lhs.date == rhs.date
    }
}

extension PartTemp: Hashable {
    var hashValue: Int { return date.hashValue }
}

extension PartTemp: Imigable {}

