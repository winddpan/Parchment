import Foundation
import SwiftUI

@available(iOS 13.0, *)
final class RestrictedUIHostingController<Content: View>: UIHostingController<Content> {
    override init(rootView: Content) {
        super.init(rootView: rootView)
    }

    @available(*, unavailable)
    @MainActor dynamic required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        super.loadView()
    }

    override var navigationController: UINavigationController? {
        nil
    }
}
