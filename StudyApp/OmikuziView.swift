

import SwiftUI

struct OmikuziView: View {
    let omikuzis = ["大吉","中吉","小吉","凶"]
    @State private var kuzi = ""
    var body: some View {
        VStack {
            Button {
                self.kuzi = self.omikuzis.randomElement()!
            } label: {
                Text("占う")
            }

            Text(kuzi)
                .font(.system(size: 50))
                .fontWeight(.bold)
            .foregroundColor(.green)
        }
    }
}

struct OmikuziView_Previews: PreviewProvider {
    static var previews: some View {
        OmikuziView()
    }
}
