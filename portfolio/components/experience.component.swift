import SwiftUI

struct ExperienceC: View {
let experience: ExperienceM
  var body: some View {
    VStack(alignment: .leading) {
        Text(experience.companyName)
        Text(experience.designation)
        Text(experience.year)
        Text(experience.description)
        ForEach(experience.achievements, id: \.self) { achievement in
        Text(achievement)
      }
    }
  }
}
