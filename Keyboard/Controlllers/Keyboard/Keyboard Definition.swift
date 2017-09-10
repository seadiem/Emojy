import UIKit

class Keyboard: UICollectionViewController {
    
    var model = KeyboardModel()
    
    let layout = UICollectionViewFlowLayout()
    
    init() {
        super.init(collectionViewLayout: layout)
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .horizontal
        
        collectionView?.register(PartCell.self, forCellWithReuseIdentifier: PartCell.reuseIdentifier)
        collectionView?.alwaysBounceHorizontal = true
        
        var faces = [Face]()
        for index in 1...5 {
            guard let image = UIImage(named: "face\(index)") else { continue }
            let face = Face(image: image)
            faces.append(face)
        }
        model.faces = faces
        
        var hairs = [Hair]()
        for index in 1...4 {
            guard let image = UIImage(named: "hairs\(index)") else { continue }
            let hair = Hair(image: image)
            hairs.append(hair)
        }
        model.hairs = hairs
        
        var clothes = [Clothes]()
        for index in 1...4 {
            guard let image = UIImage(named: "clothes\(index)") else { continue }
            let cloth = Clothes(image: image)
            clothes.append(cloth)
        }
        model.clothes = clothes
        
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
