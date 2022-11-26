import SwiftUI

struct AwardC: View {
	let award: AwardM
	var body: some View {
		NavigationView {
			VStack {
				Text(award.designation)
			}.padding()
		}.navigationBarBackButtonHidden()
	}
}
