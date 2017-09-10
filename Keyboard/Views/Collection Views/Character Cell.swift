import UIKit

class PartCell: UICollectionViewCell {
    
    static let reuseIdentifier = "\(PartCell.self)"
    let image = UIImageView()
    
    var model: Imigable! {
        didSet {
            image.image = model.image
            switch model.selected {
            case .free: contentView.backgroundColor = UIColor.yellow
            case .selected: contentView.backgroundColor = UIColor.cyan
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = UIColor.yellow
        contentView.addSubview(image)
        image.contentMode = .scaleAspectFit
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        image.frame = contentView.bounds
    }
    
}
