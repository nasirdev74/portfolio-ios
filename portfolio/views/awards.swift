import SwiftUI

struct AwardsView: View {
  var body: some View {
    Text("awards")
  }
}

class AwardsPreview: PreviewProvider {
  static var previews: some View {
    AwardsView()
  }

  #if DEBUG
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController = UIHostingController(rootView: AwardsView())
  }
  #endif
}