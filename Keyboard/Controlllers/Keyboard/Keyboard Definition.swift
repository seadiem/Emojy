import UIKit

class Keyboard: UICollectionViewController {
    

    
    let layout = UICollectionViewFlowLayout()
    
    init() {
        super.init(collectionViewLayout: layout)
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.bounds.width / 2 - 4, height: view.bounds.width / 2 - 4)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
