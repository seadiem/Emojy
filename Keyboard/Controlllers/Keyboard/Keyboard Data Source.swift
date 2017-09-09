import UIKit

//extension Keyboard {
//    
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return humans.count
//    }
//    
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let model = humans[indexPath.item]
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FriendCell.reuseIdentifier, for: indexPath) as! FriendCell
//        cell.profile = model
//        return cell
//    }
//}
//
//extension Keyboard {
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let friend = humans[indexPath.item]
//        let alien = AlienController(id: friend.id)
//        let navigation = UINavigationController(rootViewController: alien)
//        present(navigation, animated: true, completion: nil)
//    }
//}
//
//extension Keyboard {
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        loadFriends()
//    }
//}

extension Keyboard {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
}

