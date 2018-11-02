import Foundation
import Quick

@testable import BetterGetView

extension QuickSpec {
    func getView<T>(_ identifier: ViewIdentifiable, _ classType: T.Type, file: StaticString = #file, _ line: UInt = #line) -> T? {
        let typeClassName = String(describing: classType)
        let actor = self.actor(file: file, line: line)
        
        guard let view = actor.waitForView(withAccessibilityIdentifier: identifier.toString()) else {
            XCTAssert(false, "View with identifier \(identifier.toString()) and type \(typeClassName) not found", file: file, line: line)
            return nil
        }
        
        let viewClassName = String(describing: type(of: view))
        guard let castedView = view as? T else {
            XCTAssert(false, "The view is a `\(viewClassName)`. Please pass the correct class type.", file: file, line: line)
            return nil
        }
        
        guard typeClassName == viewClassName else {
            XCTAssert(false, "Gave `\(typeClassName)` but it must be a `\(viewClassName)`.", file: file, line: line)
            return nil
        }
        
        return castedView
    }
}
