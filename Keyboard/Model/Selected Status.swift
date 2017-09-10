enum SelectStatus {
    case free
    case selected
    
    static prefix func ! (out: inout SelectStatus) {
        switch out {
        case .free: out = .selected
        case .selected: out = .free
        }
    }
}
