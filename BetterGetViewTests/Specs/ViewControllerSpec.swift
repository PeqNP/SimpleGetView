import Foundation
import Quick
import Nimble

@testable import BetterGetView

typealias ViewID = ViewController.ViewID

class ViewControllerSpec: QuickSpec {
    override func spec() {
        
        describe("ViewControllerSpec") {
            var subject: ViewController!
            
            beforeEach {
                subject = viewController(type: ViewController.self, storyboard: "Main", identifier: "ViewController")
                testViewController(subject)
            }
            
            describe("initial configuration") {
                it("should cast correctly and be the correct value") {
                    let label = self.getView(ViewID.label, CustomLabel.self)
                    expect(label?.text).to(equal("Default Value"))
                }
                
                it("should fail as UILabel is not the exact type") {
                    let label = self.getView(ViewID.label, UILabel.self)
                    expect(label?.text).to(equal("Default Value"))
                }
                
                it("should fail as it is the wrong type") {
                    _ = self.getView(ViewID.label, UIImageView.self)
                }
            }
        }
        
    }
}
