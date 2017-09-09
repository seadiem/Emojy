import UIKit

enum RootModel {
    case edit
    case view
}

extension RootModel {
    var keyboardheight: CGFloat {
        switch self {
        case .edit: return UIScreen.main.bounds.height / 3
        case .view: return 0
        }
    }
}

extension RootModel {
    var canvasFrame: CGRect {
        return UIScreen.main.bounds
    }
    var keyboardFrame: CGRect {
        let insets = UIEdgeInsets(top: UIScreen.main.bounds.height - keyboardheight, left: 0, bottom: 0, right: 0)
        return UIEdgeInsetsInsetRect(UIScreen.main.bounds, insets)
    }
}

extension RootModel {
    static prefix func ! (out: inout RootModel) {
        switch out {
        case .edit: out = .view
        case .view: out = .edit
        }
    }
}
