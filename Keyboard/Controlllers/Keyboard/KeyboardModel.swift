import Foundation

struct KeyboardModel {
    var hairs: [Hair] = []
    var bodyes: [Body] = []
    var faces: [Face] = []
    var clothes: [Clothes] = []
}

extension KeyboardModel {
    var imagable: [Imigable] {
        let h = hairs as [Imigable]
        let b = bodyes as [Imigable]
        let f = faces as [Imigable]
        let c = clothes as [Imigable]
        let imagable: [Imigable] = h + b + f + c
        return imagable
    }
}

extension KeyboardModel {
    subscript(path: IndexPath) -> Imigable {
        let s = imagable.sorted { (lhs, rhs) -> Bool in
            return lhs.part < rhs.part
        }
        return s[path.item]
    }
}
