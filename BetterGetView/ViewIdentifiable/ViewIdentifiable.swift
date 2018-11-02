import Foundation

public protocol ViewIdentifiable {
    func toString() -> String
}

extension ViewIdentifiable {
    
    /**
     Returns a string representation of `self`.
     */
    func toString() -> String {
        return String(reflecting: self)
    }
}
