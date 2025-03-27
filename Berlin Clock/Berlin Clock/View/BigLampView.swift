import SwiftUI

struct BigLampView: View {
    let isOn: Bool
    let colorOn: Color
    let colorOff: Color
    var body: some View {
        Rectangle()
            .frame(width: 74, height: 32)
            .cornerRadius(4)
            .foregroundColor(isOn ? colorOn : colorOff)
    }
}

#Preview {
    BigLampView(isOn: true, colorOn: .redOn, colorOff: .redOff)
}
