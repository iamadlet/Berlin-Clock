import SwiftUI

struct BerlinClockView: View {
    
    @ObservedObject var viewModel = BerlinClockViewModel()
    
    var body: some View {
        VStack {
            
            Text("Time is \(viewModel.currentTime.formatted(date: .omitted, time: .standard))")
                .font(.system(size: 17, weight: .semibold))
                    .padding(.top)
            ZStack {
                Color.white
                ClockDisplay(clockState: viewModel.clockState)
                
            }
            .frame(width: 358, height: 312)
            .cornerRadius(12)
            
            HStack {
                DatePicker("Insert Time",
                           selection: $viewModel.selectedTime,
                           displayedComponents: [.hourAndMinute])
                .datePickerStyle(.graphical)
                .frame(height: 100)
                .padding()
                
            }
            .frame(width: 358, height: 54)
            .background(.white)
            .cornerRadius(12)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemGray6))
    }
}

#Preview {
    BerlinClockView()
}
