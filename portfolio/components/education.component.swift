import SwiftUI

struct EducationC: View {
    let education: EducationM
    var body: some View {
		VStack(alignment: .leading) {
            Text(education.designation)
				.font(AppFont.openSans22)
				.fontWeight(.semibold)
			Spacer().frame(height: 8)
			
			Text(education.year)
				.font(AppFont.openSans16)
				.fontWeight(.semibold)
			Spacer().frame(height: 10)
			
            Text(education.institute)
				.font(AppFont.openSans16)
				.fontWeight(.regular)
            Text(education.address)
				.font(AppFont.openSans16)
				.fontWeight(.regular)
        }
    }
}
