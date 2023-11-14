
import SwiftUI

struct IscheckedView: View {
    @State private var IsChecked = false
    var body: some View {
        VStack{
            Text("完了かなあ")
                .foregroundColor(IsChecked ? .red : .green)
            ToggleView(IsChecked: $IsChecked)
        }
    }
}

struct ToggleView: View {
    @Binding var IsChecked: Bool
    var body: some View {
        VStack{
            Button {
                self.IsChecked.toggle()
            } label: {
                Text("切り替えるよ")
            }

        }
    }
}

struct IscheckedView_Previews: PreviewProvider {
    static var previews: some View {
        IscheckedView()
    }
}

