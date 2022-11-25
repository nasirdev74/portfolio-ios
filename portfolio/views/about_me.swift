import SwiftUI

struct AboutMeView: View {
  var body: some View {
    Text("About Me")
  }
}

class AboutMePreview: PreviewProvider {
  static var previews: some View {
    AboutMeView()
  }

  #if DEBUG
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController = UIHostingController(rootView: AboutMeView())
  }
  #endif
}