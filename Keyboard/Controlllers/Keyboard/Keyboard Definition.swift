import UIKit

class Keyboard: UICollectionViewController {
    
    var model = KeyboardModel()
    
    let layout = UICollectionViewFlowLayout()
    
    init() {
        super.init(collectionViewLayout: layout)
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.bounds.width / 2 - 4, height: view.bounds.width / 2 - 4)
        
        collectionView?.register(PartCell.self, forCellWithReuseIdentifier: PartCell.reuseIdentifier)
        collectionView?.alwaysBounceHorizontal = true

        
        var bodyes = [Body]()
        for index in 1...4 {
            guard let image = UIImage(named: "body\(index)") else { continue }
            let body = Body(image: image)
            bodyes.append(body)
        }
        model.bodyes = bodyes
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
