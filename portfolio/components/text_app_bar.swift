import SwiftUI

struct TextAppBar: View {
  var title: String
  var body: some View {
    HStack {
      Image("arrow_back")
       .resizable()
       .scaledToFit()
       .frame(height: 20)
       .foregroundColor(AppColor.color1B2027)

      Spacer()
       .frame(width: 10, height: 0)

      Text(title)
       .font(AppFont.rubik20)
       .fontWeight(.medium)
       .foregroundColor(AppColor.color1B2027)
    }
  }
}