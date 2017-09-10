enum Part {
    case body
    case hair
    case face
    case clothes
}

extension Part {
    var zaxis: Int {
        switch self {
        case .body: return 1
        case .clothes: return 2
        case .face: return 4
        case .hair: return 3
        }
    }
}

extension Part: Comparable {
    static func <(lhs: Part, rhs: Part) -> Bool {
        return lhs.zaxis < rhs.zaxis
    }
}
