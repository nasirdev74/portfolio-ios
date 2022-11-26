import SwiftUI

struct ExperiencesView: View {
  @Environment(\.presentationMode) var mode: Binding<PresentationMode>
  var experiences = [
    ExperienceM(
      companyName: "Time Research & Innovation\nRampura, Dhaka",
      designation: "Mobile Application Developer",
      year: "2021",
      description: "It was my first professional work experience. Here I joined as an intern and later an employee. I worked on a few projects including a medical service provider, attendance system for an ATM security provider company and a data collection system for a govt research project. All of them were developed with Flutter.",
      achievements: [
        "Learning Flutter",
        "Team collaboration",
        "3 app published",
      ]),
    ExperienceM(
      companyName: "Royex Technologies\nDubai, UAE",
      designation: "Jr Software Engineer",
      year: "2022",
      description: "Most important thing here I learned was ‘Team Work’. How to collaborate with each other and how to manage things so no one gets blocked. I worked with 20+ other team members. I worked on an e-commerce app which is fully operational in Dubai now.",
      achievements: [
        "package id: com.royex.noa",
        "skill: team work",
        "writing clean code",
        "writing documentation and support others",
      ]),
    ExperienceM(
      companyName: "Softcent\nTallinn, Estonia",
      designation: "Mobile Application Developer",
      year: "2022",
      description: "Here I’m working on the most exciting project in my life so far. It’s a financial project that works with multiple bank APIs for transactions. It helps others, especially the freelancers in my country to get their payments really fast and without a dual currency bank account. My responsibility was A-Z about the app. Initial design to development to publishing. I got the UI design on Figma and the APIs from the backend team. The app is up and running now (com.revorium).",
      achievements: [
        "project: Revorium",
        "Confidence",
        "Maintenance skill",
        "App architecture",
      ])
    ]

  var body: some View {
    NavigationView {
      ScrollView {
        VStack(alignment: .leading) {
          Button(action: {
            mode.wrappedValue.dismiss()
          }) {
            TextAppBar(title: "Experiences")
          }
          Spacer().frame(height: 30)

          ForEach(experiences, id: \.self) { experience in
              VStack {
                  ExperienceC(experience: experience)
                  Spacer().frame(height: 10)
              }
          }
        }
         .padding()
      }
    }
     .navigationBarBackButtonHidden()
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
