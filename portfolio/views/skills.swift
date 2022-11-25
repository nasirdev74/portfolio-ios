import SwiftUI

struct SkillsView: View {
  @Environment(\.presentationMode) var mode: Binding<PresentationMode>
  let skills = [
    "Flutter",
    "iOS",
    "Android",
    "Animations",
    "App Smoothness",
    "Figma and XD UI Implementation",
    "Swift UI",
    "Spring Boot",
    "RxDart",
    "Software Architecture",
    "JIRA",
    "Agile Methodology",
    "Firebase",
    "Design System",
    "GetX",
    "Typography",
    "Swift",
    "Dart",
    "UI Implementation With 100% Accuracy",
    "Maintaining Large Application",
  ]

  var body: some View {
    NavigationView {
      ZStack {
        AppColor
         .colorF2F2F2
         .blur(radius: 50)
         .edgesIgnoringSafeArea(.all)

        VStack(alignment: .leading) {
          Button(action: {
            mode.wrappedValue.dismiss()
          }) {
            HStack {
              Image("arrow_back")
               .resizable()
               .scaledToFit()
               .frame(height: 20)
               .foregroundColor(AppColor.color1B2027)

              Spacer().frame(width: 10, height: 0)

              Text("Skills")
               .font(AppFont.rubik20)
               .fontWeight(.medium)
               .foregroundColor(AppColor.color1B2027)
            }
          }
          Spacer().frame(height: 30)
          GeometryReader { geometry in
            generateContent(in: geometry)
          }
        }.padding(13)
      }
    }.navigationBarBackButtonHidden()
  }

  private func generateContent(in g: GeometryProxy) -> some View {
    var width = CGFloat.zero
    var height = CGFloat.zero

    return ZStack(alignment: .topLeading) {
      ForEach(skills, id: \.self) { platform in
        self.item(for: platform)
         .padding([.horizontal, .vertical], 6)
         .alignmentGuide(.leading, computeValue: { d in
           if (abs(width - d.width) > g.size.width) {
             width = 0
             height -= d.height
           }
           let result = width
           if platform == skills.last! {
             width = 0 //last item
           } else {
             width -= d.width
           }
           return result
         })
         .alignmentGuide(.top, computeValue: { d in
           let result = height
           if platform == skills.last! {
             height = 0 // last item
           }
           return result
         })
      }
    }
  }

  func item(for text: String) -> some View {
    Text("  \(text)  ")
     .padding(11)
     .background {
       Color.white
     }
     .cornerRadius(1000)
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