import SwiftUI

let educations = [
    EducationM(
        designation: "SSC",
        year: "2016",
        institute: "Jadurani High School",
        address: "Haripur, Thakurgaon."
    ),
    EducationM(
        designation: "Diploma In Computer Science",
        year: "2016 - 2020",
        institute: "Munshiganj Polytechnic Institute",
        address: "Munshiganj"
    ),
]

struct EducationsView: View {
	@Environment(\.presentationMode) var mode: Binding<PresentationMode>
  var body: some View {
	  NavigationView {
		  VStack(alignment: .leading) {
			  Button(action: {
				  mode.wrappedValue.dismiss()
			  }) {
				  TextAppBar(title: "Educations")
			  }
			  Spacer().frame(height: 30)
			  ForEach(educations, id: \.self) {education in
				  VStack {
					  EducationC(education: education)
				  }
			  }
			  Spacer().frame(width: UIScreen.screenWidth - 26)
		  }.padding(13)
	  }.navigationBarBackButtonHidden()
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
