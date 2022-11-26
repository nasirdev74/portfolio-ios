import SwiftUI

struct AwardC: View {
	let award: AwardM
	var body: some View {
		VStack(alignment: .leading) {
			Text(award.designation)
				.font(AppFont.openSans22)
				.fontWeight(.semibold)
			Spacer().frame(height: 8)
			Text(award.year)
				.font(AppFont.openSans16)
				.fontWeight(.semibold)
			Spacer().frame(height: 10)
			Text(award.institute)
				.font(AppFont.openSans16)
				.fontWeight(.regular)
			Text(award.address)
				.font(AppFont.openSans16)
				.fontWeight(.regular)
		}
	}
}
