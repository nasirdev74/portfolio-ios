import SwiftUI

struct CVView: View {
  var body: some View {
    NavigationView {
      VStack {
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

        NavigationLink(destination: AboutMeView()) {
          Text("About Me")
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