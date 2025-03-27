import SwiftUI

struct SmallLampView: View {
    let isOn: Bool
    let isYellow: Bool
    var colorOn: Color {
        isYellow ? .yellowOn : .redOn
    }
    var colorOff: Color {
        isYellow ? .yellowOff : .redOff
    }
    var body: some View {
        Rectangle()
            .frame(width: 21, height: 32)
            .cornerRadius(2)
            .foregroundColor(isOn ? colorOn : colorOff)
    }
}

#Preview {
    SmallLampView(isOn: false, isYellow: false)
}
