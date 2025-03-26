//
//  LampView.swift
//  Berlin Clock
//
//  Created by Адлет Жумагалиев on 26.03.2025.
//

import SwiftUI

struct BigLampView: View {
    let isOn: Bool
    let colorOn: Color
    let colorOff: Color
    var body: some View {
        Rectangle()
            .frame(width: 74, height: 32)
            .cornerRadius(4)
            .foregroundColor(isOn ? .redOn : .redOff)
    }
}

#Preview {
    BigLampView(isOn: true, colorOn: .redOn, colorOff: .redOff)
}
