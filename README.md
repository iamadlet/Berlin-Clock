# 🕰 Berlin Clock — SwiftUI

![image](https://github.com/user-attachments/assets/94b53221-8b5a-40c3-99cf-def21a71ccac)


A visual and dynamic recreation of the famous **Berlin Clock (Mengenlehreuhr)**, built with SwiftUI.

This unique clock tells the time using rows of colored lights — each representing seconds, hours, or minutes in a binary-inspired design. This project replicates that logic and layout while allowing users to set and visualize any custom time.

## ✨ Features

- ⏱️ Dynamic clock ticking every second
- 🕹 User-defined time input via `DatePicker`
- 🟥🟨 Accurate lamp rendering for:
  - Seconds (blinking yellow light)
  - Hours (5-hour and 1-hour rows)
  - Minutes (5-minute row with quarter-hour highlights)
  - 1-minute lamps
- 🌗 Dark mode support (optional)
- 📱 Built using 100% SwiftUI & MVVM pattern

## 📐 Layout Overview

- `BerlinClockViewModel`: Handles time tracking and logic updates every second.
- `BerlinClockState`: Converts `Date` into Berlin Clock representation (lights on/off).
- `ClockDisplay`: Displays lamp rows based on the current state.
- `SmallLampView` / `BigLampView`: Modular light components using color and shape.

## 🧠 How the Berlin Clock Works

| Row               | Lamps | Description                               |
|-------------------|-------|-------------------------------------------|
| Top (Seconds)     | 1     | Yellow light blinks every second          |
| 2nd (5-hour)      | 4     | Each lamp = 5 hours                       |
| 3rd (1-hour)      | 4     | Each lamp = 1 hour                        |
| 4th (5-minute)    | 11    | Each lamp = 5 minutes (every 3rd is red)  |
| 5th (1-minute)    | 4     | Each lamp = 1 minute                      |

## 🧪 Try It

1. Set any time using the built-in time picker
2. The clock starts ticking from that moment
3. Watch the lamps animate and update in real-time


---

## 📷 Preview

