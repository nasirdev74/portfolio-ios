import SwiftUI

struct ExperiencesView: View {
  var body: some View {
    Text("Experiences")
  }
}

class ExperiencesPreview: PreviewProvider {
  static var previews: some View {
    ExperiencesView()
  }

  #if DEBUG
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController = UIHostingController(rootView: ExperiencesView())
  }
  #endif
}