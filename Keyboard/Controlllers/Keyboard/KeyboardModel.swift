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

extension KeyboardModel {
    mutating func changeModel(model: Imigable) {
        switch model {
        case let hair as Hair:
            hairs = hairs.map { (hair) -> Hair in
                var out = hair
                out.selected = .free
                return out
            }
            if let index = self.hairs.index(of: hair) { self.hairs[index] = hair }
        case let body as Body:
            bodyes = bodyes.map{ body -> Body in
                var out = body
                out.selected = .free
                return out
            }
            if let index = self.bodyes.index(of: body) { self.bodyes[index] = body }
        case let face as Face:
            faces = faces.map{ face -> Face in
                var out = face
                out.selected = .free
                return out
            }
            if let index = self.faces.index(of: face) { self.faces[index] = face }
        case let clothes as Clothes:
            self.clothes = self.clothes.map{ cloth -> Clothes in
                var out = cloth
                out.selected = .free
                return out
            }
            if let index = self.clothes.index(of: clothes) { self.clothes[index] = clothes }
        default: break
        }
    }
}

extension KeyboardModel {
    var selected: [Imigable] {
        let hf: [Imigable] = hairs.filter { $0.selected == .selected}
        let bf: [Imigable] = bodyes.filter { $0.selected == .selected}
        let cf: [Imigable] = clothes.filter { $0.selected == .selected}
        let ff: [Imigable] = faces.filter { $0.selected == .selected}
        let k = hf + bf + cf + ff
        let s = k.sorted { (lhs, rhs) -> Bool in return lhs.part < rhs.part }
        return s
    }
}













