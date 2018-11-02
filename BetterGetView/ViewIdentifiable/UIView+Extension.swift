import Foundation
import UIKit

extension UIView {
    public var identifier: ViewIdentifiable? {
        get {
            return nil
        }
        set {
            accessibilityIdentifier = newValue?.toString()
        }
    }
}
