import UIKit

struct Body {
    
    static var hash = 0
    let hashValue: Int
    
    let part = Part.body
    let image: UIImage
    let layer: CALayer
    var selected = SelectStatus.free
    
    init(image: UIImage) {
        self.image = image
        layer = CALayer()
        layer.contents = image.cgImage!
        layer.frame = CGRect(x: 0, y: 0, width: image.size.width / 2, height: image.size.height / 2)
        hashValue = Body.hash
        Body.hash += 1
    }
    
}

extension Body: Imigable {}

extension Body: Equatable {
    static func == (lhs: Body, rhs: Body) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
