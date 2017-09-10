import UIKit

struct Face {
    
    static var hash = 0
    let hashValue: Int
    
    let part = Part.face
    let image: UIImage
    let layer: CALayer
    var selected = SelectStatus.free
    
    init(image: UIImage) {
        self.image = image
        layer = CALayer()
        layer.contents = image.cgImage!
        layer.frame = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
        hashValue = Face.hash
        Face.hash += 1
    }
}

extension Face: Imigable {}

extension Face: Equatable {
    static func == (lhs: Face, rhs: Face) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
