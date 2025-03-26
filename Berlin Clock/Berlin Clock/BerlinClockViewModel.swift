import Foundation

class BerlinClockViewModel: ObservableObject {
    @Published var currentTime: Date = Date()
    @Published var clockState = BerlinClockState.from(date: Date())
    @Published var selectedTime: Date = Date() {
        didSet {
            currentTime = selectedTime
            clockState = BerlinClockState.from(date: currentTime)
        }
    }
    
    private var timer: Timer?
    
    init() {
        selectedTime = Date()
        currentTime = selectedTime
        clockState = BerlinClockState.from(date: selectedTime)
        startTimer()
    }
    
    private func startTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.selectedTime.addTimeInterval(1)
            self.clockState = BerlinClockState.from(date: self.currentTime)
        }
    }
    
    deinit {
        timer?.invalidate()
    }
}
