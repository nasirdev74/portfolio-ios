import SwiftUI

struct SkillsView: View {
  var body: some View {
    Text("Skills")
  }
}

class SkillsPreview: PreviewProvider {
  static var previews: some View {
    SkillsView()
  }

  #if DEBUG
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController = UIHostingController(rootView: SkillsView())
  }
  #endif
}