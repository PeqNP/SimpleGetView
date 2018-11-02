import UIKit

class ViewController: UIViewController {
    
    enum ViewID: ViewIdentifiable {
        case label
    }
    
    @IBOutlet private weak var label: CustomLabel! {
        didSet {
            label.identifier = ViewID.label
            label.text = "Default Value"
        }
    }
}

