import SwiftUI

struct OthersView: View {
  var body: some View {
    Text("others")
  }
}

class OthersPreview: PreviewProvider {
  static var previews: some View {
    OthersView()
  }

  #if DEBUG
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController = UIHostingController(rootView: OthersView())
  }
  #endif
}