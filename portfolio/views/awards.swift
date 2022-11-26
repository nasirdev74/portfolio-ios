import SwiftUI

let awards = [
	AwardM(
		designation: "Problem Solving",
		year: "2020",
		institute: "MPI Computer Club",
		address: "Munshiganj"
	),
	AwardM(
		designation: "Java Programming",
		year: "2021",
		institute: "IBCS-PRIMAX Software Ltd.",
		address: "Dhanmondi, Dhaka"
	),
]

struct AwardsView: View {
	@Environment(\.presentationMode) var mode: Binding<PresentationMode>
  var body: some View {
	  NavigationView {
		  VStack(alignment: .leading) {
			  Button(action: {
				  mode.wrappedValue.dismiss()
			  }){
				  TextAppBar(title: "Awards")
			  }
			  Spacer().frame(height: 30)
			  ForEach(awards, id: \.self) {award in
				  VStack {
					  AwardC(award: award)
					  Spacer().frame(height: 10)
				  }
			  }
			  Spacer().frame(width: UIScreen.screenWidth - 26)
		  }.padding(13)
	  }.navigationBarBackButtonHidden()
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
