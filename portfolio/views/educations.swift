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
  var body: some View {
	  NavigationView {
		  VStack {
			  ForEach(educations, id: \.self) {education in
				  VStack {
					  EducationC(education: education)
				  }
			  }
		  }
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
