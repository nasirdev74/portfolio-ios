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
  var body: some View {
	  NavigationView {
		  VStack {
			  ForEach(awards, id: \.self) {award in
				  VStack {
					  AwardC(award: award)
					  Spacer().frame(height: 10)
				  }
			  }
		  }
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
