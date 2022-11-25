import SwiftUI

struct AboutMeView: View {
  @Environment(\.presentationMode) var mode: Binding<PresentationMode>

  var body: some View {
    NavigationView {
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

            Spacer()
             .frame(width: 10, height: 0)

            Text("About Me")
             .font(AppFont.rubik20)
             .fontWeight(.medium)
             .foregroundColor(AppColor.color1B2027)
          }
        }
        Spacer().frame(height: 30)

        Text("I'm a mobile application developer with 2+ years of experience. I have successfully built and published 6 commercial mobile applications. Including:")
         .font(AppFont.openSans16)
         .fontWeight(.regular)
         .foregroundColor(AppColor.color474F59)
        Group {
          Spacer().frame(height: 10)
          Text("#Revorium - fintech project for a startup company in Estonia.")
           .font(AppFont.openSans16)
           .fontWeight(.regular)
           .foregroundColor(AppColor.color474F59)

          Spacer().frame(height: 10)
          Text("#NOA - e-commerce app live in Dubai.")
           .font(AppFont.openSans16)
           .fontWeight(.regular)
           .foregroundColor(AppColor.color474F59)

          Spacer().frame(height: 10)
          Text("#3Arabi - social media app")
           .font(AppFont.openSans16)
           .fontWeight(.regular)
           .foregroundColor(AppColor.color474F59)

          Spacer().frame(height: 10)
          Text("#WHA - telemedicine service app.")
           .font(AppFont.openSans16)
           .fontWeight(.regular)
           .foregroundColor(AppColor.color474F59)
          Spacer().frame(height: 10)
        }

        Text("I have work experience on highly secured financial projects. My  strong points are UI design implementation with 100% accuracy and app smoothness. I like to see my work as a piece of art. I’m very aware of my app smoothness and user experience as well as the app functionalities. I have confidence in implementing any complex feature in my app. I regularly study my work related topics to get updated and learn new things.")
         .font(AppFont.openSans16)
         .fontWeight(.regular)
         .foregroundColor(AppColor.color474F59)
        Spacer()
      }
       .padding(13)
    }
     .navigationBarBackButtonHidden()
  }
}

class AboutMePreview: PreviewProvider {
  static var previews: some View {
    AboutMeView()
  }

  #if DEBUG
  @objc class func injected() {
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    windowScene?.windows.first?.rootViewController = UIHostingController(rootView: AboutMeView())
  }
  #endif
}