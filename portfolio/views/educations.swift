import SwiftUI

struct EducationsView: View {
  var body: some View {
    Text("educations")
  }
}

class EducationsPreview: PreviewProvider {
  static var previews: some View {
    EducationsView()
  }

  #if DEBUG
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController = UIHostingController(rootView: EducationsView())
  }
  #endif
}