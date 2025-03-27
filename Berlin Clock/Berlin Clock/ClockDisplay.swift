//
//  ClockDisplay.swift
//  Berlin Clock
//
//  Created by Адлет Жумагалиев on 26.03.2025.
//

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
            
            HStack {
                ForEach(clockState.oneHourLights.indices, id: \.self) {i in
                    BigLampView(isOn: clockState.fiveHourLights[i], colorOn: .redOn, colorOff: .redOff)
                }
            }
            
            HStack {
                ForEach(clockState.fiveMinuteLights.indices, id: \.self) {i in
                    let isYellow = (i % 3 == 0) ? false : true
                    SmallLampView(isOn: clockState.fiveMinuteLights[i], isYellow: isYellow)
                }
            }
            
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
