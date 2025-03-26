import Foundation
import SwiftUI


struct BerlinClockState {
    let secondsLightOn: Bool
    let fiveHourLights: [Bool]
    let oneHourLights: [Bool]
    let fiveMinuteLights: [BerlinMinuteLight]
    let oneMinuteLights: [Bool]
    
    enum BerlinMinuteLight {
        case on
        case off
        case quarter
    }
    
    static func from(date: Date) -> BerlinClockState {
        let calendar = Calendar.current
        let seconds = calendar.component(.second, from: date)
        let minutes = calendar.component(.minute, from: date)
        let hours = calendar.component(.hour, from: date)
        
        return BerlinClockState(
            secondsLightOn: seconds % 2 == 0,
            fiveHourLights: Array(repeating: true, count: hours / 5) + Array(repeating: false, count: 4 - (hours / 5)),
            oneHourLights: Array(repeating: true, count: hours % 5) + Array(repeating: false, count: 4 - (hours % 5)),
            fiveMinuteLights: (0..<11).map { i in
                let index = i + 1
                if minutes / 5 >= index {
                    return (index % 3 == 0) ? .quarter : .on
                } else {
                    return .off
                }
            },
            oneMinuteLights: Array(repeating: true, count: minutes / 5) + Array(repeating: false, count: 4 - minutes / 5)
        )
    }
}

