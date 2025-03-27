import SwiftUI

struct SecondsLampView: View {
    let isOn: Bool
    let colorOn: Color
    let colorOff: Color
    var body: some View {
        Circle()
            .frame(width: 56, height: 56)
            .foregroundColor(isOn ? colorOn : colorOff)
    }
}

#Preview {
    SecondsLampView(isOn: false, colorOn: .yellowOn, colorOff: .yellowOff)
}
