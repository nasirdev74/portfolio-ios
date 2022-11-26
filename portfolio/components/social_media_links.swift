import SwiftUI

struct SocialMediaLinks: View {
	@Environment(\.openURL) private var openURL
	
	var body: some View {
		VStack(alignment: .leading) {
			Text("Follow Me")
				.font(AppFont.openSans22)
				.foregroundColor(AppColor.color1B2027)
			
			Spacer().frame(height: 8)
			Button(action: {
				if let url = URL(string: "http://www.linkedin.com/in/nasir-s-592b98214") {openURL(url)}
			}) {
				Text(verbatim: "Linkedin")
					.underline()
					.foregroundColor(.black)
			}
			
			Spacer().frame(height: 5)
			Button(action: {
				if let url = URL(string: "http://github.com/Nasirdev74") {openURL(url)}
			}){
				Text(verbatim: "GitHub")
					.underline()
					.foregroundColor(.black)
			}
			
			Spacer().frame(height: 5)
			Button(action: {
				if let url = URL(string: "http://www.hackerrank.com/nasir_dev74") {openURL(url)}
			}) {
				Text(verbatim: "HackerRank")
					.underline()
					.foregroundColor(.black)
			}
		}
	}
}
