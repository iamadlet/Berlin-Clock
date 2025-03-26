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
        VStack {
            //MARK: - Seconds Lamp
            SecondsLampView(isOn: clockState.secondsLightOn, colorOn: .yellowOn, colorOff: .yellowOff)
            
            //MARK: - 5 Hour lamp
            HStack {
                ForEach(clockState.fiveHourLights.indices, id: \.self) {i in
                    BigLampView(isOn: clockState.fiveHourLights[i], color: )
                }
            }
        }
        
    }
}

//#Preview {
//    ClockDisplay(clockState: )
//}
