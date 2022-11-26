import SwiftUI

let softwares = [
	"Android Studio",
	"AppCode",
	"Xcode",
	"Adobe XD",
	"Figma",
	"inVision",
	"Jira",
	"Vysor",
	"Postman",
]

struct SoftwaresC: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("Software")
				.font(AppFont.openSans22)
				.fontWeight(.semibold)
				.padding(10)
			Spacer().frame(height: 5)
			
			GeometryReader { geometry in
				generateContent(in: geometry)
			}
		}
	}
	
	private func generateContent(in g: GeometryProxy) -> some View {
	  var width = CGFloat.zero
	  var height = CGFloat.zero

	  return ZStack(alignment: .topLeading) {
		ForEach(softwares, id: \.self) { platform in
		  SoftwareC(software: platform)
		   .padding([.horizontal, .vertical], 6)
		   .alignmentGuide(.leading, computeValue: { d in
			 if (abs(width - d.width) > g.size.width) {
			   width = 0
			   height -= d.height
			 }
			 let result = width
			 if platform == softwares.last! {
			   width = 0 //last item
			 } else {
			   width -= d.width
			 }
			 return result
		   })
		   .alignmentGuide(.top, computeValue: { d in
			 let result = height
			 if platform == softwares.last! {
			   height = 0 // last item
			 }
			 return result
		   })
		}
	  }
	}
}
