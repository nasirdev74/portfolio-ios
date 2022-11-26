import SwiftUI

struct SoftwareC: View {
	let software: String
	
	var body: some View  {
		Text("  \(software)  ")
			.padding(11)
			.background(AppColor.colorF2F2F2)
			.cornerRadius(1000)
	}
}
