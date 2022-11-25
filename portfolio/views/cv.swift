import SwiftUI

struct CVView: View {
  var body: some View {
    NavigationView {
      VStack {
        Spacer().frame(height: 10)
        Image("pp")
         .resizable()
         .scaledToFill()
         .frame(width: 155, height: 155)
         .clipShape(Circle())

        Text("Nasir S.")
         .font(AppFont.openSans32)
         .fontWeight(Font.Weight.semibold)
         .foregroundColor(AppColor.color2F3640)

        Spacer().frame(height: 12)

        Text("Mobile Application Developer")
         .font(AppFont.openSans22)
         .fontWeight(.regular)
         .foregroundColor(AppColor.color414751)

        Spacer().frame(height: 5)

        Text(verbatim: "nasir.dev74@gmail.com")
         .font(AppFont.rubik20)
         .fontWeight(.regular)
         .foregroundColor(AppColor.color1B2027)
        List {
          NavigationLink(destination: AboutMeView()) {
            Text("About Me")
             .font(AppFont.rubik20)
             .fontWeight(.medium)
             .foregroundColor(AppColor.color1B2027)
          }
           .frame(height: 40)
           .foregroundColor(.white)

          NavigationLink(destination: SkillsView()) {
            Text("Skills")
             .font(AppFont.rubik20)
             .fontWeight(.medium)
             .foregroundColor(AppColor.color1B2027)
          }
           .frame(height: 40)
           .foregroundColor(.white)

          NavigationLink(destination: ExperiencesView()) {
            Text("Experiences")
             .font(AppFont.rubik20)
             .fontWeight(.medium)
             .foregroundColor(AppColor.color1B2027)
          }
           .frame(height: 40)
           .foregroundColor(.white)

          NavigationLink(destination: EducationsView()) {
            Text("Educations")
             .font(AppFont.rubik20)
             .fontWeight(.medium)
             .foregroundColor(AppColor.color1B2027)
          }
           .frame(height: 40)
           .foregroundColor(.white)

          NavigationLink(destination: AwardsView()) {
            Text("Awards")
             .font(AppFont.rubik20)
             .fontWeight(.medium)
             .foregroundColor(AppColor.color1B2027)
          }
           .frame(height: 40)
           .foregroundColor(.white)

          NavigationLink(destination: OthersView()) {
            Text("Others")
             .font(AppFont.rubik20)
             .fontWeight(.medium)
             .foregroundColor(AppColor.color1B2027)
          }
           .frame(height: 40)
           .foregroundColor(.white)
        }
      }
    }
  }
}

class CVPreview: PreviewProvider {
  static var previews: some View {
    CVView()
  }

  #if DEBUG
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController = UIHostingController(rootView: CVView())
  }
  #endif
}