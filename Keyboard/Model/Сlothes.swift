import UIKit

struct Clothes {
    
    static var hash = 0
    let hashValue: Int
    
    let part = Part.clothes
    let image: UIImage
    let layer: CALayer
    var selected = SelectStatus.free
    
    init(image: UIImage) {
        self.image = image
        layer = CALayer()
        layer.contents = image.cgImage!
        layer.frame = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
        hashValue = Clothes.hash
        Clothes.hash += 1
    }
}

extension Clothes: Imigable {}

extension Clothes: Equatable {
    static func == (lhs: Clothes, rhs: Clothes) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
