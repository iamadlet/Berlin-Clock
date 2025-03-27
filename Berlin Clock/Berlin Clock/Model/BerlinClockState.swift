import Foundation
import SwiftUI


struct BerlinClockState {
    let secondsLightOn: Bool
    let fiveHourLights: [Bool]
    let oneHourLights: [Bool]
    let fiveMinuteLights: [Bool]
    let oneMinuteLights: [Bool]
    
    static func from(date: Date) -> BerlinClockState {
        let calendar = Calendar.current
        let seconds = calendar.component(.second, from: date)
        let minutes = calendar.component(.minute, from: date)
        let hours = calendar.component(.hour, from: date)
        
        let fiveHourCount = min(hours / 5, 4)
        let oneHourCount = min(hours % 5, 4)
        
        return BerlinClockState(
            secondsLightOn: seconds % 2 == 0,
            fiveHourLights: Array(repeating: true, count: fiveHourCount) + Array(repeating: false, count: 4 - fiveHourCount),
            oneHourLights: Array(repeating: true, count: oneHourCount) + Array(repeating: false, count: 4 - oneHourCount),
            fiveMinuteLights: Array(repeating: true, count: minutes / 5) + Array(repeating: false, count: 11 - (minutes / 5)),
            oneMinuteLights: Array(repeating: true, count: minutes % 5) + Array(repeating: false, count: 4 - (minutes % 5))
        )
    }
}

