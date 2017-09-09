import UIKit

class Root: UIViewController {
    
    var model: RootModel = .edit
    
    let canvas = Canvas()
    let keyboard = Keyboard()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        addChildViewController(canvas)
        view.addSubview(canvas.view)
        canvas.didMove(toParentViewController: self)
        
        addChildViewController(keyboard)
        view.addSubview(keyboard.view)
        keyboard.didMove(toParentViewController: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        canvas.view.frame = model.canvasFrame
        keyboard.view.frame = model.keyboardFrame
    }
}
