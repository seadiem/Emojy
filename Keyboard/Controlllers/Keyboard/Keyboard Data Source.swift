import UIKit

extension Keyboard {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.imagable.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PartCell.reuseIdentifier, for: indexPath) as! PartCell
        let model = self.model[indexPath]
        cell.model = model
        return cell
    }
}


extension Keyboard: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.height / 2 - 2
        return CGSize(width: height, height: height)
    }
}

