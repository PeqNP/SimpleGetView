import Foundation
import KIF

extension XCTestCase {
    public func actor(file: StaticString = #file, line: UInt = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: "\(file)", atLine: Int(line), delegate: self)
    }
}
