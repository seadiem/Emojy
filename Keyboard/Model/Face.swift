import UIKit

struct Face {
    let part = Part.face
    let image: UIImage
    let layer: CALayer
    var selected = SelectStatus.free
    
    init(image: UIImage) {
        self.image = image
        layer = CALayer()
        layer.contents = image.cgImage!
        layer.frame = CGRect(x: 0, y: 0, width: image.size.width / 2, height: image.size.height / 2)
    }
}

extension Face: Imigable {}
