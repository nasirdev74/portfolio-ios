import Foundation
import SwiftUI

struct EducationC: View {
    let education: EducationM
    var body: some View {
        VStack {
            Text(education.designation)
            Text(education.year)
            Text(education.institute)
            Text(education.address)
        }
    }
}
