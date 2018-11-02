import Foundation
import Nimble
import UIKit

func testViewController(_ viewController: UIViewController) {
    UIApplication.shared.keyWindow?.layer.speed = 100
    UIApplication.shared.keyWindow?.rootViewController = viewController
    expect(true).toEventually(beTrue())
}

func viewController<T: AnyObject>(type: T.Type, storyboard: String, identifier: String) -> T {
    let bundle = Bundle.main
    let storyboard = UIStoryboard(name: storyboard, bundle: bundle)
    return storyboard.instantiateViewController(withIdentifier: identifier) as! T
}
