import UIKit

struct Clothes {
    
    static var hash = 0
    let hashValue: Int
    
    let part = Part.clothes
    let image: UIImage
    let layer: CALayer
    var selected = SelectStatus.free
    
    init(image: UIImage, full: UIImage) {
        self.image = image
        layer = CALayer()
        layer.contents = full.cgImage!
        layer.frame = CGRect(x: 0, y: 0, width: full.size.width * 1.6, height: full.size.height * 1.6)
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
