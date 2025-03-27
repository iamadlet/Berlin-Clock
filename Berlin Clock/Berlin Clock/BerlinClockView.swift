//
//  BerlinClockView.swift
//  Berlin Clock
//
//  Created by Адлет Жумагалиев on 26.03.2025.
//

import SwiftUI

struct BerlinClockView: View {
    @ObservedObject var viewModel = BerlinClockViewModel()
    var body: some View {
        VStack {
            Text("Time is \(viewModel.currentTime.formatted(date: .omitted, time: .standard))")
                .font(.system(size: 40, weight: .medium, design: .monospaced))
                    .padding(.top)
            ClockDisplay(clockState: viewModel.clockState)
            
            HStack {
                DatePicker("Insert Time",
                           selection: $viewModel.selectedTime,
                           displayedComponents: [.hourAndMinute])
                .datePickerStyle(.graphical)
                .frame(height: 100)
                .padding()
                
            }
            .frame(width: 358, height: 54)
        }
        .background()
    }
}

#Preview {
    BerlinClockView()
}
