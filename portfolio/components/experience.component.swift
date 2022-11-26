import SwiftUI

struct ExperienceC: View {
let experience: ExperienceM
  var body: some View {
    VStack(alignment: .leading) {
        Text(experience.companyName)
			.font(AppFont.rubik22)
			.fontWeight(.medium)
		Spacer().frame(height: 14)
		
        Text(experience.designation)
			.font(AppFont.openSans18)
			.fontWeight(.semibold)
		Spacer().frame(height: 19)
		
		HStack {
			Text(experience.year)
				.frame(width: 128, height: 34)
				.overlay(
					RoundedRectangle(cornerRadius: 20).stroke(AppColor.color8D939C, lineWidth: 1)
				)
			Spacer().frame(width: 16)
			AppColor.color8D939C
				.frame(maxWidth: .infinity, maxHeight: 1)
		}
		Spacer().frame(height: 29)
		
		Text(experience.description)
			.font(AppFont.openSans14)
			.fontWeight(.regular)
			.foregroundColor(AppColor.color414751)
		Spacer().frame(height: 10)
		
		Text("Achievements:")
			.font(AppFont.openSans14)
			.fontWeight(.regular)
			.foregroundColor(AppColor.color414751)
	
        ForEach(experience.achievements, id: \.self) { achievement in
			Text("🔷 \(achievement)")
				.font(AppFont.openSans14)
				.fontWeight(.regular)
				.foregroundColor(AppColor.color414751)
				.padding([.vertical], 2)
      }
    }
  }
}
