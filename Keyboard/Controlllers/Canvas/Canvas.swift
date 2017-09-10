import UIKit

class Canvas: UIViewController {
    
    var parts: [Imigable] = []
    
    var canvas = UIView()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = UIColor.orange
        canvas.backgroundColor = UIColor.gray
        view.addSubview(canvas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let width = view.bounds.width
        let height = view.bounds.height
        let insets = UIEdgeInsets(top: height / 4, left: width / 4, bottom: height / 3 + 50, right: width / 4)
        let rect = UIEdgeInsetsInsetRect(view.frame, insets)
        canvas.frame = rect
        
    }
}

extension Canvas {
    func changeParts(parts: [Imigable]) {
        for item in self.parts {
            item.layer.removeFromSuperlayer()
        }
        self.parts = parts
        for item in self.parts {
            canvas.layer.addSublayer(item.layer)
        }
    }
}
