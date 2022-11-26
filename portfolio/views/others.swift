import SwiftUI

struct OthersView: View {
	@Environment(\.presentationMode) var mode: Binding<PresentationMode>
	var body: some View {
	  NavigationView {
		  VStack(alignment: .leading) {
			  Button(action: {
				  mode.wrappedValue.dismiss()
			  }){
				  TextAppBar(title: "Others")
			  }
			  Spacer().frame(height: 30)
			  SocialMediaLinks()
			  Spacer().frame(width: UIScreen.screenWidth - 26)
		  }.padding(13)
	  }.navigationBarBackButtonHidden()
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
