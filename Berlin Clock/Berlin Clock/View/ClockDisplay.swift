import SwiftUI

struct ClockDisplay: View {
    let clockState: BerlinClockState
    
    var body: some View {
        VStack(spacing: 16) {
            
            //MARK: - Seconds Lamp
            SecondsLampView(isOn: clockState.secondsLightOn, colorOn: .yellowOn, colorOff: .yellowOff)
            
            //MARK: - 5 Hour lamp
            HStack {
                ForEach(clockState.fiveHourLights.indices, id: \.self) {i in
                    BigLampView(isOn: clockState.fiveHourLights[i], colorOn: .redOn, colorOff: .redOff)
                }
            }
            
            
            //MARK: - 1 Hour lamp
            HStack {
                ForEach(clockState.oneHourLights.indices, id: \.self) {i in
                    BigLampView(isOn: clockState.oneHourLights[i], colorOn: .redOn, colorOff: .redOff)
                }
            }
            
            //MARK: - 5 Minute lamp
            HStack {
                ForEach(clockState.fiveMinuteLights.indices, id: \.self) {i in
                    let index = i + 1
                    let isYellow = (index % 3 == 0) ? false : true
                    SmallLampView(isOn: clockState.fiveMinuteLights[i], isYellow: isYellow)
                }
            }
            
            //MARK: - 1 minute lamp
            HStack {
                ForEach(clockState.oneMinuteLights.indices, id: \.self) {i in
                    BigLampView(isOn: clockState.oneMinuteLights[i], colorOn: .yellowOn, colorOff: .yellowOff)
                }
            }
        }
        .padding()
        
    }
}

#Preview {
    ClockDisplay(clockState: BerlinClockState.from(date: Date()))
}
