import UIKit

struct Hair {
    
    static var hash = 0
    let hashValue: Int
    
    let part = Part.hair
    let image: UIImage
    let layer: CALayer
    var selected = SelectStatus.free
    
    init(image: UIImage) {
        self.image = image
        layer = CALayer()
        layer.contents = image.cgImage!
        layer.frame = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
        hashValue = Hair.hash
        Hair.hash += 1
    }
}

extension Hair: Imigable {}

extension Hair: Equatable {
    static func == (lhs: Hair, rhs: Hair) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
