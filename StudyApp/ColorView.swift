

import SwiftUI


struct ColorView: View {
    var body: some View {
        VStack{
            Color(.orange)
            Color(red: 1.0, green: 0.58, blue: 0.0, opacity: 1.0)
            Color(white: 0.5, opacity: 1.0)
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
    }
}
