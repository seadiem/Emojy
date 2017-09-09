import UIKit

class PartCell: UICollectionViewCell {
    
    static let reuseIdentifier = "\(PartCell.self)"
    let image = UIImageView()
    
    var model: Imigable! {
        didSet {
            image.image = model.image
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = UIColor.yellow
        contentView.addSubview(image)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        image.frame = contentView.bounds
    }
    
}
