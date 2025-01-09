import SwiftUI
import WidgetKit
import Combine
import UserNotifications

struct ContentView: View {
    @AppStorage("text1Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text1Wid: String = "Default Value"
    @AppStorage("text2Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text2Wid: String = "Default Value"
    @AppStorage("text3Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text3Wid: String = "Default Value"
    @AppStorage("text4Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text4Wid: String = "Default Value"
    @AppStorage("text5Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text5Wid: String = "Default Value"
    
    // MARK: Main variables
    @AppStorage("isHidden1") private var isHidden1Saved = true
    @State public var isHidden1 = true {
        didSet {
            isHidden1Saved = isHidden1
        }
    }
    
    @AppStorage("isHidden2") private var isHidden2Saved = true
    @State public var isHidden2 = true {
        didSet {
            isHidden2Saved = isHidden2
        }
    }
    
    @AppStorage("isHidden3") private var isHidden3Saved = true
    @State public var isHidden3 = true {
        didSet {
            isHidden3Saved = isHidden3
        }
    }
    
    @AppStorage("isHidden4") private var isHidden4Saved = true
    @State public var isHidden4 = true {
        didSet {
            isHidden4Saved = isHidden4
        }
    }
    
    @AppStorage("isHidden5") private var isHidden5Saved = true
    @State public var isHidden5 = true {
        didSet {
            isHidden5Saved = isHidden5
        }
    }
    
    @AppStorage("text1", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests")) private var text1Saved = ""
    @State public var text1 = "" {
        didSet {
            text1Saved = text1
            text1Wid = text1
            saveToAppGroup()
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
    
    @AppStorage("text2") private var text2Saved = ""
    @State public var text2 = "" {
        didSet {
            text2Saved = text2
            saveToAppGroup()
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
    
    @AppStorage("text3") private var text3Saved = ""
    @State public var text3 = "" {
        didSet {
            text3Saved = text3
            saveToAppGroup()
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
    
    @AppStorage("text4") private var text4Saved = ""
    @State public var text4 = "" {
        didSet {
            text4Saved = text4
            saveToAppGroup()
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
    
    @AppStorage("text5") private var text5Saved = ""
    @State public var text5 = "" {
        didSet {
            text5Saved = text5
            saveToAppGroup()
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
    
    @AppStorage("score") private var scoreSaved = 0
    @State public var score = 0 {
        didSet {
            scoreSaved = score
        }
    }
    
    @AppStorage("gain") private var gainSaved = 20
    @State public var gain = 20 {
        didSet {
            gainSaved = gain
        }
    }
    @AppStorage("price") private var priceSaved = 100
    @State public var price = 100 {
        didSet {
            priceSaved = price
        }
    }
    @AppStorage("dis1") private var dis1Saved = false
    @State public var dis1 = false {
        didSet {
            dis1Saved = dis1
        }
    }
    @AppStorage("dis2") private var dis2Saved = false
    @State public var dis2 = false {
        didSet {
            dis2Saved = dis2
        }
    }
    @AppStorage("dis3") private var dis3Saved = false
    @State public var dis3 = false {
        didSet {
            dis3Saved = dis3
        }
    }
    @AppStorage("dis4") private var dis4Saved = false
    @State public var dis4 = false {
        didSet {
            dis4Saved = dis4
        }
    }
    @AppStorage("dis5") private var dis5Saved = false
    @State public var dis5 = false {
        didSet {
            dis4Saved = dis5
        }
    }
    @AppStorage("minutes") private var minutesSaved = 0
    @State public var minutes = 0 {
        didSet {
            minutesSaved = minutes
        }
    }
    @AppStorage("seconds") private var secondsSaved = 0
    @State public var seconds = 0 {
        didSet {
            secondsSaved = seconds
        }
    }
    @AppStorage("started") private var startedSaved = false
    @State public var started = false {
        didSet {
            startedSaved = started
        }
    }
    

    @State public var timer: Timer?

    
    @AppStorage("savedDate") private var savedDate: Double = Date().timeIntervalSince1970 // Default to current time
        
        // Use @State to hold the current date locally
    @State public var currentDate: Date = Date(){
        didSet {
            // Update savedDate in AppStorage whenever currentDate changes
            savedDate = currentDate.timeIntervalSince1970
        }
    }
    

    @AppStorage("result") private var resultSaved = false
    @State public var result = false {
        didSet {
            resultSaved = result
        }
    }

    @AppStorage("count") private var countSaved = 0
    @State public var count = 0 {
        didSet {
            countSaved = count
        }
    }
    @AppStorage("Wprice") private var WpriceSaved = 700
    @State public var Wprice = 700 {
        didSet {
            WpriceSaved = Wprice
        }
    }
    @AppStorage("Wgain") private var WgainSaved = 150
    @State public var Wgain = 150 {
        didSet {
            WgainSaved = Wgain
        }
    }
    @AppStorage("repeat1") private var repeat1Saved = false
    @State public var repeat1 = false {
        didSet {
            repeat1Saved = repeat1
        }
    }
    @AppStorage("repeat2") private var repeat2Saved = false
    @State public var repeat2 = false {
        didSet {
            repeat2Saved = repeat2
        }
    }
    @AppStorage("repeat3") private var repeat3Saved = false
    @State public var repeat3 = false {
        didSet {
            repeat3Saved = repeat3
        }
    }
    @AppStorage("repeat4") private var repeat4Saved = false
    @State public var repeat4 = false {
        didSet {
            repeat4Saved = repeat4
        }
    }
    @AppStorage("repeat5") private var repeat5Saved = false
    @State public var repeat5 = false {
        didSet {
            repeat5Saved = repeat5
        }
    }
    @AppStorage("DayResult1") private var DayResult1Saved = false
    @State public var DayResult1 = false {
        didSet {
            DayResult1Saved = DayResult1
        }
    }
    @AppStorage("DayResult2") private var DayResult2Saved = false
    @State public var DayResult2 = false {
        didSet {
            DayResult2Saved = DayResult2
        }
    }
    @AppStorage("DayResult3") private var DayResult3Saved = false
    @State public var DayResult3 = false {
        didSet {
            DayResult3Saved = DayResult3
        }
    }
    @AppStorage("DayResult4") private var DayResult4Saved = false
    @State public var DayResult4 = false {
        didSet {
            DayResult4Saved = DayResult4
        }
    }
    @AppStorage("DayResult5") private var DayResult5Saved = false
    @State public var DayResult5 = false {
        didSet {
            DayResult5Saved = DayResult5
        }
    }
    
    //MARK: SAVE TO APP GROUP
private func saveToAppGroup() {
        let defaults = UserDefaults(suiteName: "group.Dawson.Reminder-Quests")
        defaults?.set(text1, forKey: "text1Wid")
        defaults?.set(text2, forKey: "text2Wid")
        defaults?.set(text3, forKey: "text3Wid")
        defaults?.set(text4, forKey: "text4Wid")
        defaults?.set(text5, forKey: "text5Wid")
        print("Saved to App Group: \(text1)") // Debugging
    }
    
    // MARK: Content Body
    var body: some View {
        NavigationStack {
            ZStack {
                // Background color
                LinearGradient(
                    gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                // Main content
                VStack {
                    HStack{
                        Button(action: {
                            score += gain
                            Dcount = 1
                            isHidden1 = true
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }.disabled(dis1)
                        NavigationLink(destination: AddDaily(
                            isHidden1: $isHidden1,
                             isHidden2: $isHidden2,
                             isHidden3: $isHidden3,
                             isHidden4: $isHidden4,
                             isHidden5: $isHidden5,
                             text1: $text1,
                             text2: $text2,
                             text3: $text3,
                             text4: $text4,
                             text5: $text5,
                             dis1: $dis1,
                             dis2: $dis2,
                             dis3: $dis3,
                             dis4: $dis4,
                             dis5: $dis5,
                             minutes: $minutes,
                             seconds: $seconds,
                             started: $started,
                             result: $result,
                             count: $count,
                             timer: $timer,
                            repeat1: $repeat1,
                            repeat2: $repeat2,
                            repeat3: $repeat3,
                            repeat4: $repeat4,
                            repeat5: $repeat5,
                             currentDate: $currentDate)){
                                 
                            Text(text1)
                                .frame(minWidth: 200, minHeight: 50)
                                .background(Color(white: 0.2))
                                .cornerRadius(10)
                        }.simultaneousGesture(
                            TapGesture().onEnded {
                                Dcount = 1
                            }
                        )
                        Label("+\(gain)", systemImage: "sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden1 ? 0 : 1)
                    
                    HStack{
                        Button(action: {
                            score += gain
                            Dcount = 2
                            isHidden2 = true
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }.disabled(dis2)
                        
                        NavigationLink(destination: AddDaily(
                            isHidden1: $isHidden1,
                             isHidden2: $isHidden2,
                             isHidden3: $isHidden3,
                             isHidden4: $isHidden4,
                             isHidden5: $isHidden5,
                             text1: $text1,
                             text2: $text2,
                             text3: $text3,
                             text4: $text4,
                             text5: $text5,
                             dis1: $dis1,
                             dis2: $dis2,
                             dis3: $dis3,
                             dis4: $dis4,
                             dis5: $dis5,
                             minutes: $minutes,
                             seconds: $seconds,
                             started: $started,
                             result: $result,
                             count: $count,
                             timer: $timer,
                            repeat1: $repeat1,
                            repeat2: $repeat2,
                            repeat3: $repeat3,
                            repeat4: $repeat4,
                            repeat5: $repeat5,
                             currentDate: $currentDate)){
        
                            Text(text2)
                                .frame(minWidth: 200, minHeight: 50)
                                .background(Color(white: 0.2))
                                .cornerRadius(10)
                        }.simultaneousGesture(
                            TapGesture().onEnded {
                                Dcount = 2
                            }
                        )
                        Label("+\(gain)", systemImage: "sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden2 ? 0 : 1)
                    
                    HStack{
                        Button(action: {
                            score += gain
                            Dcount = 3
                            isHidden3 = true
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }.disabled(dis3)
                        NavigationLink(destination: AddDaily(
                            isHidden1: $isHidden1,
                             isHidden2: $isHidden2,
                             isHidden3: $isHidden3,
                             isHidden4: $isHidden4,
                             isHidden5: $isHidden5,
                             text1: $text1,
                             text2: $text2,
                             text3: $text3,
                             text4: $text4,
                             text5: $text5,
                             dis1: $dis1,
                             dis2: $dis2,
                             dis3: $dis3,
                             dis4: $dis4,
                             dis5: $dis5,
                             minutes: $minutes,
                             seconds: $seconds,
                             started: $started,
                             result: $result,
                             count: $count,
                             timer: $timer,
                            repeat1: $repeat1,
                            repeat2: $repeat2,
                            repeat3: $repeat3,
                            repeat4: $repeat4,
                            repeat5: $repeat5,
                             currentDate: $currentDate)){
                                 
                            Text(text3)
                                .frame(minWidth: 200, minHeight: 50)
                                .background(Color(white: 0.2))
                                .cornerRadius(10)
                        }.simultaneousGesture(
                            TapGesture().onEnded {
                                Dcount = 3
                            }
                        )
                        Label("+\(gain)", systemImage: "sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden3 ? 0 : 1)
                    
                    HStack{
                        Button(action: {
                            score += gain
                            Dcount = 4
                            isHidden4 = true
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }.disabled(dis4)
                        NavigationLink(destination: AddDaily(
                            isHidden1: $isHidden1,
                             isHidden2: $isHidden2,
                             isHidden3: $isHidden3,
                             isHidden4: $isHidden4,
                             isHidden5: $isHidden5,
                             text1: $text1,
                             text2: $text2,
                             text3: $text3,
                             text4: $text4,
                             text5: $text5,
                             dis1: $dis1,
                             dis2: $dis2,
                             dis3: $dis3,
                             dis4: $dis4,
                             dis5: $dis5,
                             minutes: $minutes,
                             seconds: $seconds,
                             started: $started,
                             result: $result,
                             count: $count,
                             timer: $timer,
                            repeat1: $repeat1,
                            repeat2: $repeat2,
                            repeat3: $repeat3,
                            repeat4: $repeat4,
                            repeat5: $repeat5,
                             currentDate: $currentDate)){
                                 
                            Text(text4)
                                .frame(minWidth: 200, minHeight: 50)
                                .background(Color(white: 0.2))
                                .cornerRadius(10)
                        }.simultaneousGesture(
                            TapGesture().onEnded {
                                Dcount = 4
                            }
                        )
                        Label("+\(gain)", systemImage: "sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden4 ? 0 : 1)
                    
                    HStack{
                        Button(action: {
                            score += gain
                            Dcount = 5
                            isHidden5 = true
                            if isHidden1 && isHidden2 && isHidden3 && isHidden4 && isHidden5{
                                Dcount = 1
                            }
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }.disabled(dis5)
                        NavigationLink(destination: AddDaily(
                            isHidden1: $isHidden1,
                             isHidden2: $isHidden2,
                             isHidden3: $isHidden3,
                             isHidden4: $isHidden4,
                             isHidden5: $isHidden5,
                             text1: $text1,
                             text2: $text2,
                             text3: $text3,
                             text4: $text4,
                             text5: $text5,
                             dis1: $dis1,
                             dis2: $dis2,
                             dis3: $dis3,
                             dis4: $dis4,
                             dis5: $dis5,
                             minutes: $minutes,
                             seconds: $seconds,
                             started: $started,
                             result: $result,
                             count: $count,
                             timer: $timer,
                            repeat1: $repeat1,
                            repeat2: $repeat2,
                            repeat3: $repeat3,
                            repeat4: $repeat4,
                            repeat5: $repeat5,
                             currentDate: $currentDate)){
                                 
                            Text(text5)
                                .frame(minWidth: 200, minHeight: 50)
                                .background(Color(white: 0.2))
                                .cornerRadius(10)
                        }.simultaneousGesture(
                            TapGesture().onEnded {
                                Dcount = 5
                            }
                        )
                        Label("+\(gain)", systemImage: "sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden5 ? 0 : 1)
                    Spacer()
                }.padding(.top,80)
                
                // Top-right NavigationLink to Add View
                VStack {
                    Rectangle()
                        .frame(height: 7)
                        .foregroundColor(Color(white: 0.2))
                    HStack {
                        Label("\(score)", systemImage: "sparkles").font(.largeTitle)
                        Spacer()
                        if (dis1 || dis2 || dis3 || dis4 || dis5) {
                            Text("\(minutes):\(seconds)")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(white: 0.3))
                                .cornerRadius(10)
                        }
                        Spacer()
                        // MARK: shop nav link
                        NavigationLink(destination: Shop(
                            isHidden1: $isHidden1,
                            isHidden2: $isHidden2,
                            isHidden3: $isHidden3,
                            isHidden4: $isHidden4,
                            isHidden5: $isHidden5,
                            text1: $text1,
                            text2: $text2,
                            text3: $text3,
                            text4: $text4,
                            text5: $text5,
                            gain: $gain,
                            score: $score,
                            price: $price,
                            Wprice: $Wprice,
                            Wgain: $Wgain
                        )) {
                            Image(systemName: "cart.badge.plus")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(white: 0.2))
                                .cornerRadius(30)
                        }
                        // MARK: add daily nav link
                        NavigationLink(destination: AddDaily(
                            isHidden1: $isHidden1,
                            isHidden2: $isHidden2,
                            isHidden3: $isHidden3,
                            isHidden4: $isHidden4,
                            isHidden5: $isHidden5,
                            text1: $text1,
                            text2: $text2,
                            text3: $text3,
                            text4: $text4,
                            text5: $text5,
                            dis1: $dis1,
                            dis2: $dis2,
                            dis3: $dis3,
                            dis4: $dis4,
                            dis5: $dis5,
                            minutes: $minutes,
                            seconds: $seconds,
                            started: $started,
                            result: $result,
                            count: $count,
                            timer: $timer,
                            repeat1: $repeat1,
                            repeat2: $repeat2,
                            repeat3: $repeat3,
                            repeat4: $repeat4,
                            repeat5: $repeat5,
                            currentDate: $currentDate
                        )) {
                            Image(systemName: "plus")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(white: 0.2))
                                .cornerRadius(30)
                        }
                        
                        
                    }
                    .padding(.horizontal)
                    Spacer()
                }
            }
            .navigationTitle("Daily")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    VStack {
                        // MARK: weekly nav link
                        NavigationLink(destination: Weekly(
                            isHidden1: $isHidden1,
                            isHidden2: $isHidden2,
                            isHidden3: $isHidden3,
                            isHidden4: $isHidden4,
                            isHidden5: $isHidden5,
                            text1: $text1,
                            text2: $text2,
                            text3: $text3,
                            text4: $text4,
                            text5: $text5,
                            gain: $gain,
                            score: $score,
                            price: $price,
                            Wprice: $Wprice,
                            WpriceSaved: $WpriceSaved,
                            Wgain: $Wgain,
                            WgainSaved: $WgainSaved
                        )) {
                            Text("Weekly")
                            Image(systemName: "calendar")
                                .padding(5)
                            
                        }.font(.headline)
                            .foregroundColor(.white)
                            .background(Color(white: 0.2))
                        
                            .cornerRadius(10)
                        }
                }
            }
            .tint(Color(white: 0.2))
            // MARK: on appear/ disappear
        }.onAppear {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                if granted {
                    print("Permission granted!")
                } else {
                    print("Permission denied.")
                }
            }
            isHidden1 = isHidden1Saved
            isHidden2 = isHidden2Saved
            isHidden3 = isHidden3Saved
            isHidden4 = isHidden4Saved
            isHidden5 = isHidden5Saved
            text1 = text1Saved
            text2 = text2Saved
            text3 = text3Saved
            text4 = text4Saved
            text5 = text5Saved
            score = scoreSaved
            gain = gainSaved
            price = priceSaved
            dis1 = dis1Saved
            dis2 = dis2Saved
            dis3 = dis3Saved
            dis4 = dis4Saved
            dis5 = dis5Saved
            minutes = minutesSaved
            seconds = secondsSaved
            started = startedSaved
            Wgain = WgainSaved
            Wprice = WpriceSaved
            saveToAppGroup()
            WidgetCenter.shared.reloadAllTimelines()
            currentDate = Date(timeIntervalSince1970: savedDate)
            setupNavigationBarAppearance()
            startTimer()
        }
        .onDisappear{
            saveToAppGroup()
            WidgetCenter.shared.reloadAllTimelines()
            isHidden1Saved = isHidden1
            isHidden2Saved = isHidden2
            isHidden3Saved = isHidden3
            isHidden4Saved = isHidden4
            isHidden5Saved = isHidden5
            text1Saved = text1
            text2Saved = text2
            text3Saved = text3
            text4Saved = text4
            text5Saved = text5
            scoreSaved = score
            gainSaved = gain
            priceSaved = price
            dis1Saved = dis1
            dis2Saved = dis2
            dis3Saved = dis3
            dis4Saved = dis4
            dis5Saved = dis5
            minutesSaved = minutes
            secondsSaved = seconds
            startedSaved = started
        }
    }
    // MARK: daily timer
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            
            if (dis1 || dis2 || dis3 || dis4 || dis5) {
                result = isOneMinuteAfter(startTime: currentDate)
            }
            if repeat1 {
                DayResult1 = isOneDayAfter1(startTime: currentDate)
            }
            if repeat2 {
                DayResult2 = isOneDayAfter2(startTime: currentDate)
            }
            if repeat3 {
                DayResult3 = isOneDayAfter3(startTime: currentDate)
            }
            if repeat4 {
                DayResult4 = isOneDayAfter4(startTime: currentDate)
            }
            if repeat5 {
                DayResult5 = isOneDayAfter5(startTime: currentDate)
            }
            if result {
                dis1 = false
                dis2 = false
                dis3 = false
                dis4 = false
                dis5 = false
                stopTimer()
            }
            if DayResult1{
                isHidden1 = false
            }
            if DayResult2{
                isHidden2 = false
                
            }
            if DayResult3{
                isHidden3 = false
            }
            if DayResult4{
                isHidden4 = false
            }
            if DayResult5{
                isHidden5 = false
            }
            count += 1
        }
    }
    func stopTimer() {
        // Stop the first timer if it's running
        timer?.invalidate()
        timer = nil
        started = false
    }

    func isOneMinuteAfter(startTime: Date) -> Bool {
        // Calculate one minute later
        if let oneMinuteLater = Calendar.current.date(byAdding: .minute, value: 10, to: startTime) {
            let currentTime = Date()
            
            // Calculate the time left
            let timeLeft = oneMinuteLater.timeIntervalSince(currentTime)
            if timeLeft > 0 {
                minutes = Int(timeLeft) / 60
                seconds = Int(timeLeft) % 60
            }
            // Compare if the current time is after one minute later
            return currentTime >= oneMinuteLater
        }
        
        // In case date calculation fails, return false
        return false
    }
}
func isOneDayAfter1(startTime: Date) -> Bool {
    // Adjust the startTime to 00:00 (midnight) on the same date
    let calendar = Calendar.current
    let startOfDay = calendar.startOfDay(for: startTime)
    
    if let oneDayLater = calendar.date(byAdding: .day, value: 1, to: startOfDay) {
        let currentTime = Date()
        // Compare if the current time is after one day later
        return currentTime >= oneDayLater
    }
    
    // In case date calculation fails, return false
    return false
}
func isOneDayAfter2(startTime: Date) -> Bool {
    // Adjust the startTime to 00:00 (midnight) on the same date
    let calendar = Calendar.current
    let startOfDay = calendar.startOfDay(for: startTime)
    
    // Calculate one day later
    if let oneDayLater = calendar.date(byAdding: .day, value: 1, to: startOfDay) {
        let currentTime = Date()
        // Compare if the current time is after one day later
        return currentTime >= oneDayLater
    }
    
    // In case date calculation fails, return false
    return false
}
func isOneDayAfter3(startTime: Date) -> Bool {
    // Adjust the startTime to 00:00 (midnight) on the same date
    let calendar = Calendar.current
    let startOfDay = calendar.startOfDay(for: startTime)
    
    // Calculate one day later
    if let oneDayLater = calendar.date(byAdding: .day, value: 1, to: startOfDay) {
        let currentTime = Date()
        // Compare if the current time is after one day later
        return currentTime >= oneDayLater
    }
    
    // In case date calculation fails, return false
    return false
}
func isOneDayAfter4(startTime: Date) -> Bool {
    // Adjust the startTime to 00:00 (midnight) on the same date
    let calendar = Calendar.current
    let startOfDay = calendar.startOfDay(for: startTime)
    
    // Calculate one day later
    if let oneDayLater = calendar.date(byAdding: .day, value: 1, to: startOfDay) {
        let currentTime = Date()
        // Compare if the current time is after one day later
        return currentTime >= oneDayLater
    }
    
    // In case date calculation fails, return false
    return false
}
func isOneDayAfter5(startTime: Date) -> Bool {
    // Adjust the startTime to 00:00 (midnight) on the same date
    let calendar = Calendar.current
    let startOfDay = calendar.startOfDay(for: startTime)
    
    // Calculate one day later
    if let oneDayLater = calendar.date(byAdding: .day, value: 1, to: startOfDay) {
        let currentTime = Date()
        // Compare if the current time is after one day later
        return currentTime >= oneDayLater
    }
    
    // In case date calculation fails, return false
    return false
}


private func setupNavigationBarAppearance() {
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = UIColor.gray
    
    // Correctly set the back button color using tintColor for all navigation items
    appearance.backButtonAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
    
    // Apply the appearance globally
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
}
var Dcount: Int = 1

import SwiftUI

struct AddDaily: View {
    
    // MARK: Add daily variables/view
    
    @AppStorage("dailyNotiStart") private var dailyNotiStartSaved = false
    @State public var dailyNotiStart = false {
        didSet {
            dailyNotiStartSaved = dailyNotiStart
        }
    }
    @Binding var isHidden1: Bool
    @Binding var isHidden2: Bool
    @Binding var isHidden3: Bool
    @Binding var isHidden4: Bool
    @Binding var isHidden5: Bool
    
    @Binding var text1: String
    @Binding var text2: String
    @Binding var text3: String
    @Binding var text4: String
    @Binding var text5: String
    
    @Binding var dis1: Bool
    @Binding var dis2: Bool
    @Binding var dis3: Bool
    @Binding var dis4: Bool
    @Binding var dis5: Bool
    
    @Binding var minutes: Int
    @Binding var seconds: Int
    @Binding var started: Bool
    @Binding var result: Bool
    @Binding var count: Int
    @Binding var timer: Timer?
    
    @Binding var repeat1: Bool
    @Binding var repeat2: Bool
    @Binding var repeat3: Bool
    @Binding var repeat4: Bool
    @Binding var repeat5: Bool
    
    @Binding var currentDate: Date
    //MARK: Send Daily noti function
    @State var dailyNotificationIdentifier = "dailyQuestNotification"

    
    
    func sendDailyNotification() {
        dailyNotiStart = true
        dailyNotificationIdentifier = "dailyQuestNotification" // Use a fixed identifier

        let content = UNMutableNotificationContent()
        content.title = "Yippie!"
        content.body = "Daily Quests are Ready to Be Claimed!"
        content.sound = .default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 600, repeats: false)

        let request = UNNotificationRequest(identifier: dailyNotificationIdentifier, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error scheduling notification: \(error)")
            } else {
                dailyNotiStart = false
                print("Notification scheduled with identifier: \(dailyNotificationIdentifier)")
            }
        }
    }

    func cancelDailyNotification() {
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [dailyNotificationIdentifier])
        print("Notification with identifier \(dailyNotificationIdentifier) canceled.")
    }
    // MARK: daily timer 2
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            result = isOneMinuteAfter(startTime: currentDate)
            if result {
                dis1 = false
                dis2 = false
                dis3 = false
                dis4 = false
                dis5 = false
                stopTimer()
            }
            count += 1
        }
    }
    func stopTimer() {
        // Stop the first timer if it's running
        timer?.invalidate()
        timer = nil
        started = false
    }

    func isOneMinuteAfter(startTime: Date) -> Bool {
        // Calculate one minute later
        if let oneMinuteLater = Calendar.current.date(byAdding: .minute, value: 10, to: startTime) {
            let currentTime = Date()
            
            // Calculate the time left
            let timeLeft = oneMinuteLater.timeIntervalSince(currentTime)
            if timeLeft > 0 {
                minutes = Int(timeLeft) / 60
                seconds = Int(timeLeft) % 60
            }
            // Compare if the current time is after one minute later
            return currentTime >= oneMinuteLater
        }
        
        // In case date calculation fails, return false
        return false
    }
    //MARK: SAVE TO APP GROUP
private func saveToAppGroup() {
        let defaults = UserDefaults(suiteName: "group.Dawson.Reminder-Quests")
        defaults?.set(text1, forKey: "text1Wid")
        defaults?.set(text2, forKey: "text2Wid")
        defaults?.set(text3, forKey: "text3Wid")
        defaults?.set(text4, forKey: "text4Wid")
        defaults?.set(text5, forKey: "text5Wid")
        print("Saved to App Group: \(text1)") // Debugging
    }
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                // MARK: text for adding daily
                switch Dcount {
                case 1:
                    challengeView(
                        placeholder: "Name of challenge 1",
                        text: $text1,
                        isHidden: $isHidden1,
                        isRepeat: $repeat1,
                        action: { dis1 = true;
                            isHidden1 = false
                            saveToAppGroup()
                            WidgetCenter.shared.reloadAllTimelines()
                            if dailyNotiStart{
                                cancelDailyNotification()
                                sendDailyNotification()
                            }else{
                                sendDailyNotification()
                            }
                            if isHidden2 {
                                Dcount += 1
                            }
                            if !isHidden2 && isHidden3 {
                                Dcount += 2
                            }
                            if !isHidden2 && !isHidden3 && isHidden4{
                                Dcount += 3
                            }
                            if !isHidden2 && !isHidden3 && !isHidden4 && isHidden5{
                                Dcount += 4
                            }
                            if started == false {
                                currentDate = Date()
                                startTimer()
                            }
                            
                        }
                    )
                case 2:
                    challengeView(
                        placeholder: "Name of challenge 2",
                        text: $text2,
                        isHidden: $isHidden2,
                        isRepeat: $repeat2,
                        action: { dis2 = true;
                            isHidden2 = false
                            saveToAppGroup()
                            WidgetCenter.shared.reloadAllTimelines()
                            if dailyNotiStart{
                                cancelDailyNotification()
                                sendDailyNotification()
                            }else{
                                sendDailyNotification()
                            }
                            if isHidden3 {
                                Dcount += 1
                            }else if isHidden1 {
                                Dcount -= 1
                            }
                            if !isHidden3 && isHidden4 {
                                Dcount += 2
                            }
                            if !isHidden3 && !isHidden4 && isHidden5{
                                Dcount += 3
                            }
                            if started == false {
                                currentDate = Date()
                                startTimer()
                            }
                        }
                    )
                case 3:
                    challengeView(
                        placeholder: "Name of challenge 3",
                        text: $text3,
                        isHidden: $isHidden3,
                        isRepeat: $repeat3,
                        action: { dis3 = true;
                            isHidden3 = false
                            saveToAppGroup()
                            WidgetCenter.shared.reloadAllTimelines()
                            if dailyNotiStart{
                                cancelDailyNotification()
                                sendDailyNotification()
                            }else{
                                sendDailyNotification()
                            }
                            if isHidden4 {
                                Dcount += 1
                            }else if isHidden2 {
                                Dcount -= 1
                            }
                            if !isHidden4 && isHidden5 {
                                Dcount += 2
                            }
                            if started == false {
                                currentDate = Date()
                                startTimer()
                            }
                        }
                    )
                case 4:
                    challengeView(
                        placeholder: "Name of challenge 4",
                        text: $text4,
                        isHidden: $isHidden4,
                        isRepeat: $repeat4,
                        action: { dis4 = true;
                            isHidden4 = false
                            saveToAppGroup()
                            WidgetCenter.shared.reloadAllTimelines()
                            if dailyNotiStart{
                                cancelDailyNotification()
                                sendDailyNotification()
                            }else{
                                sendDailyNotification()
                            }
                            if isHidden5 {
                                Dcount += 1
                            }else if isHidden3 {
                                Dcount -= 1
                            }
                            if started == false {
                                currentDate = Date()
                                startTimer()
                            }
                        }
                    )
                case 5:
                    challengeView(
                        placeholder: "Name of challenge 5",
                        text: $text5,
                        isHidden: $isHidden5,
                        isRepeat: $repeat5,
                        action: { dis5 = true;
                            isHidden5 = false
                            saveToAppGroup()
                            WidgetCenter.shared.reloadAllTimelines()
                            if dailyNotiStart{
                                cancelDailyNotification()
                                sendDailyNotification()
                            }else{
                                sendDailyNotification()
                            }
                            if isHidden1 && isHidden2 && isHidden3 && isHidden4{
                                Dcount = 1
                            }else if isHidden1 && isHidden2 && isHidden3 && isHidden4 && isHidden5{
                                Dcount = 1
                            }else if isHidden4 {
                                Dcount -= 1
                            }
                            if started == false {
                                currentDate = Date()
                                startTimer()
                            }
                        }
                    )
                default:
                    Text("ERROR")
                        .foregroundColor(.red)
                }
                
            }
            .navigationTitle("Add Daily Challenge")
        }
    }
    
    private func challengeView(
        placeholder: String,
        text: Binding<String>,
        isHidden: Binding<Bool>,
        isRepeat: Binding<Bool>,
        action: @escaping () -> Void
    ) -> some View {
        VStack {
            TextField(placeholder, text: text)
                .frame(minHeight: 100)
                .foregroundColor(.white)
                .background(Color(white: 0.2))
                .font(.largeTitle)
                .cornerRadius(10)
                .padding()

            HStack {
                // Custom layout for Toggle
                HStack{ // Adjust spacing here
                    Toggle("", isOn: isRepeat)
                        .labelsHidden()
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                    Text("Repeat Daily")
                        .foregroundColor(.white)
                        .padding(20)
                        
                }
                .padding(.leading, 10) // Optional: Add padding for alignment
                .background(Color(white: 0.3))
                .cornerRadius(10)
                Button(action: {
                    isHidden.wrappedValue = false
                    action()
                }) {
                    Image(systemName: "checkmark.seal")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(10)
                }.background(Color(white: 0.3))
                    .cornerRadius(10)
                    
            }
        }
    }
}
struct Shop: View {
    // MARK: shop variables/view
    @Binding var isHidden1: Bool
    @Binding var isHidden2: Bool
    @Binding var isHidden3: Bool
    @Binding var isHidden4: Bool
    @Binding var isHidden5: Bool
    
    @Binding var text1: String
    @Binding var text2: String
    @Binding var text3: String
    @Binding var text4: String
    @Binding var text5: String
    
    @Binding var gain: Int
    @Binding var score: Int
    @Binding var price: Int
    @Binding var Wprice: Int
    @Binding var Wgain: Int
    
    var body: some View {
        ZStack {
            // Background color
            LinearGradient(
                gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack{
                HStack{
                    VStack{
                        Button(action: {
                            if score >= price {
                                gain += 20
                                score -= price
                                price += price/2
                            }
                        }) {
                            Label("More Sparkles Per Daily Challenge", systemImage: "hands.and.sparkles")
                                .frame(minWidth: 260, minHeight: 50)
                                .background(Color(white: 0.4))
                                .cornerRadius(10)
                            Label("\(price)", systemImage: "sparkles")
                            
                        }.frame(minWidth: 350, minHeight: 50).font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(white: 0.3))
                            .cornerRadius(10)
                            .padding()
                    }
                }
                HStack{
                    VStack{
                        Button(action: {
                            if score >= Wprice {
                                Wgain += 700
                                score -= Wprice
                                Wprice += Wprice
                            }
                        }) {
                            Label("More Sparkles Per Weekly Challenge", systemImage: "sparkles.rectangle.stack")
                                .frame(minWidth: 260, minHeight: 50)
                                .background(Color(white: 0.4))
                                .cornerRadius(10)
                            Label("\(Wprice)", systemImage: "sparkles")
                            
                        }.frame(minWidth: 350, minHeight: 50).font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(white: 0.3))
                            .cornerRadius(10)
                            .padding()
                    }
                }
            }
            VStack {
                Rectangle()
                    .frame(height: 7)
                    .foregroundColor(Color(white: 0.2))
                Spacer()
            }
        }.navigationTitle("Shop")
    }
}
// MARK: Weekly view/vars

var WDcount: Int = 1

struct Weekly: View {
    @AppStorage("WisHidden1") private var WisHidden1Saved = true
    @State public var WisHidden1 = true {
        didSet {
            WisHidden1Saved = WisHidden1
        }
    }
    
    @AppStorage("WisHidden2") private var WisHidden2Saved = true
    @State public var WisHidden2 = true {
        didSet {
            WisHidden2Saved = WisHidden2
        }
    }
    
    @AppStorage("WisHidden3") private var WisHidden3Saved = true
    @State public var WisHidden3 = true {
        didSet {
            WisHidden3Saved = WisHidden3
        }
    }
    
    @AppStorage("Wtext1") private var Wtext1Saved = ""
    @State public var Wtext1 = "" {
        didSet {
            Wtext1Saved = Wtext1
        }
    }
    
    @AppStorage("Wtext2") private var Wtext2Saved = ""
    @State public var Wtext2 = "" {
        didSet {
            Wtext2Saved = Wtext2
        }
    }
    
    @AppStorage("Wtext3") private var Wtext3Saved = ""
    @State public var Wtext3 = "" {
        didSet {
            Wtext3Saved = Wtext3
        }
    }
    
    @AppStorage("Wdis1") private var Wdis1Saved = false
    @State public var Wdis1 = false {
        didSet {
            Wdis1Saved = Wdis1
        }
    }
    @AppStorage("Wdis2") private var Wdis2Saved = false
    @State public var Wdis2 = false {
        didSet {
            Wdis2Saved = Wdis2
        }
    }
    @AppStorage("Wdis3") private var Wdis3Saved = false
    @State public var Wdis3 = false {
        didSet {
            Wdis3Saved = Wdis3
        }
    }
    @AppStorage("Wminutes") private var WminutesSaved = 0
    @State public var Wminutes = 0 {
        didSet {
            WminutesSaved = Wminutes
        }
    }
    @AppStorage("Wseconds") private var WsecondsSaved = 0
    @State public var Wseconds = 0 {
        didSet {
            WsecondsSaved = Wseconds
        }
    }
    @AppStorage("Wstarted") private var WstartedSaved = false
    @State public var Wstarted = false {
        didSet {
            WstartedSaved = Wstarted
        }
    }
    

    @State public var Wtimer: Timer?

    
    @AppStorage("WsavedDate") private var WsavedDate: Double = Date().timeIntervalSince1970 // Default to current time
        
        // Use @State to hold the current date locally
    @State public var WcurrentDate: Date = Date(){
        didSet {
            // Update savedDate in AppStorage whenever currentDate changes
            WsavedDate = WcurrentDate.timeIntervalSince1970
        }
    }
    

    @AppStorage("Wresult") private var WresultSaved = false
    @State public var Wresult = false {
        didSet {
            WresultSaved = Wresult
        }
    }

    @AppStorage("Wcount") private var WcountSaved = 0
    @State public var Wcount = 0 {
        didSet {
            WcountSaved = Wcount
        }
    }
    //MARK: Weekly binding var
    @Binding var isHidden1: Bool
    @Binding var isHidden2: Bool
    @Binding var isHidden3: Bool
    @Binding var isHidden4: Bool
    @Binding var isHidden5: Bool
    
    @Binding var text1: String
    @Binding var text2: String
    @Binding var text3: String
    @Binding var text4: String
    @Binding var text5: String
    
    @Binding var gain: Int
    @Binding var score: Int
    @Binding var price: Int
    @Binding var Wprice: Int
    @Binding var WpriceSaved: Int
    @Binding var Wgain: Int
    @Binding var WgainSaved: Int
    //MARK: Weekly view body
    var body: some View {
        NavigationStack {
            ZStack {
                // Background color
                LinearGradient(
                    gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                // Main content
                VStack {
                    VStack{
                        HStack{
                            NavigationLink(destination: AddWeekly(
                                isHidden1: $WisHidden1,
                                isHidden2: $WisHidden2,
                                isHidden3: $WisHidden3,
                                WisHidden1Saved: $WisHidden1Saved,
                                WisHidden2Saved: $WisHidden2Saved,
                                WisHidden3Saved: $WisHidden3Saved,
                                text1: $Wtext1,
                                text2: $Wtext2,
                                text3: $Wtext3,
                                Wtext1Saved: $Wtext1Saved,
                                Wtext2Saved: $Wtext2Saved,
                                Wtext3Saved: $Wtext3Saved,
                                dis1: $Wdis1,
                                dis2: $Wdis2,
                                dis3: $Wdis3,
                                Wdis1Saved: $Wdis1Saved,
                                Wdis2Saved: $Wdis2Saved,
                                Wdis3Saved: $Wdis3Saved,
                                minutes: $Wminutes,
                                seconds: $Wseconds,
                                started: $Wstarted,
                                WminutesSaved: $WminutesSaved,
                                WsecondsSaved: $WsecondsSaved,
                                WstartedSaved: $WstartedSaved,
                                result: $Wresult,
                                count: $Wcount,
                                timer: $Wtimer,
                                WresultSaved: $WresultSaved,
                                WcountSaved: $WcountSaved,
                                currentDate: $WcurrentDate,
                                WsavedDate: $WsavedDate
                            )) {
                                Text(Wtext1)
                                    .frame(minWidth: 300, minHeight: 100)
                                    .background(Color(white: 0.2))
                                    .cornerRadius(10)
                                    .font(.title)
                            }.simultaneousGesture(
                                TapGesture().onEnded {
                                    WDcount = 1
                                }
                            )
                        }
                        HStack{
                            Button(action: {
                                score += Wgain
                                WDcount = 1
                                WisHidden1 = true
                            }) {
                                Image(systemName: "checkmark.seal")
                                    .font(.largeTitle)
                            }.disabled(Wdis1)
                            Label("+\(Wgain)", systemImage: "sparkles")
                        }
                    }.frame(minWidth: 350, minHeight: 140).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(WisHidden1 ? 0 : 1)
                    
                    VStack{
                        HStack{
                            NavigationLink(destination: AddWeekly(
                                isHidden1: $WisHidden1,
                                isHidden2: $WisHidden2,
                                isHidden3: $WisHidden3,
                                WisHidden1Saved: $WisHidden1Saved,
                                WisHidden2Saved: $WisHidden2Saved,
                                WisHidden3Saved: $WisHidden3Saved,
                                text1: $Wtext1,
                                text2: $Wtext2,
                                text3: $Wtext3,
                                Wtext1Saved: $Wtext1Saved,
                                Wtext2Saved: $Wtext2Saved,
                                Wtext3Saved: $Wtext3Saved,
                                dis1: $Wdis1,
                                dis2: $Wdis2,
                                dis3: $Wdis3,
                                Wdis1Saved: $Wdis1Saved,
                                Wdis2Saved: $Wdis2Saved,
                                Wdis3Saved: $Wdis3Saved,
                                minutes: $Wminutes,
                                seconds: $Wseconds,
                                started: $Wstarted,
                                WminutesSaved: $WminutesSaved,
                                WsecondsSaved: $WsecondsSaved,
                                WstartedSaved: $WstartedSaved,
                                result: $Wresult,
                                count: $Wcount,
                                timer: $Wtimer,
                                WresultSaved: $WresultSaved,
                                WcountSaved: $WcountSaved,
                                currentDate: $WcurrentDate,
                                WsavedDate: $WsavedDate
                            )) {
                                Text(Wtext2)
                                    .frame(minWidth: 300, minHeight: 100)
                                    .background(Color(white: 0.2))
                                    .cornerRadius(10)
                                    .font(.title)
                            }.simultaneousGesture(
                                TapGesture().onEnded {
                                    WDcount = 2
                                }
                            )
                        }
                        HStack{
                            Button(action: {
                                score += Wgain
                                WDcount = 2
                                WisHidden2 = true
                            }) {
                                Image(systemName: "checkmark.seal")
                                    .font(.largeTitle)
                            }.disabled(Wdis2)
                            Label("+\(Wgain)", systemImage: "sparkles")
                        }
                    }.frame(minWidth: 350, minHeight: 140).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(WisHidden2 ? 0 : 1)
                    
                    VStack{
                        HStack{
                            NavigationLink(destination: AddWeekly(
                                isHidden1: $WisHidden1,
                                isHidden2: $WisHidden2,
                                isHidden3: $WisHidden3,
                                WisHidden1Saved: $WisHidden1Saved,
                                WisHidden2Saved: $WisHidden2Saved,
                                WisHidden3Saved: $WisHidden3Saved,
                                text1: $Wtext1,
                                text2: $Wtext2,
                                text3: $Wtext3,
                                Wtext1Saved: $Wtext1Saved,
                                Wtext2Saved: $Wtext2Saved,
                                Wtext3Saved: $Wtext3Saved,
                                dis1: $Wdis1,
                                dis2: $Wdis2,
                                dis3: $Wdis3,
                                Wdis1Saved: $Wdis1Saved,
                                Wdis2Saved: $Wdis2Saved,
                                Wdis3Saved: $Wdis3Saved,
                                minutes: $Wminutes,
                                seconds: $Wseconds,
                                started: $Wstarted,
                                WminutesSaved: $WminutesSaved,
                                WsecondsSaved: $WsecondsSaved,
                                WstartedSaved: $WstartedSaved,
                                result: $Wresult,
                                count: $Wcount,
                                timer: $Wtimer,
                                WresultSaved: $WresultSaved,
                                WcountSaved: $WcountSaved,
                                currentDate: $WcurrentDate,
                                WsavedDate: $WsavedDate
                            )) {
                                Text(Wtext3)
                                    .frame(minWidth: 300, minHeight: 100)
                                    .background(Color(white: 0.2))
                                    .cornerRadius(10)
                                    .font(.title)
                            }.simultaneousGesture(
                                TapGesture().onEnded {
                                    WDcount = 3
                                }
                            )
                        }
                        HStack{
                            Button(action: {
                                score += Wgain
                                WDcount = 3
                                WisHidden3 = true
                            }) {
                                Image(systemName: "checkmark.seal")
                                    .font(.largeTitle)
                            }.disabled(Wdis3)
                            Label("+\(Wgain)", systemImage: "sparkles")
                        }
                    }.frame(minWidth: 350, minHeight: 140).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(WisHidden3 ? 0 : 1)
                    Spacer()
                }.padding(.top,90)
            
                VStack {
                    Rectangle()
                        .frame(height: 7)
                        .foregroundColor(Color(white: 0.2))
                        
                    HStack {
                        Label("\(score)", systemImage: "sparkles").font(.largeTitle)
                        Spacer()
                        if (Wdis1 || Wdis2 || Wdis3) {
                            Text("\(Wminutes):\(Wseconds)")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(white: 0.3))
                                .cornerRadius(10)
                        }
                        Spacer()
                        // MARK: Weekly shop nav link
                        NavigationLink(destination: Shop(
                            isHidden1: $isHidden1,
                            isHidden2: $isHidden2,
                            isHidden3: $isHidden3,
                            isHidden4: $isHidden4,
                            isHidden5: $isHidden5,
                            text1: $text1,
                            text2: $text2,
                            text3: $text3,
                            text4: $text4,
                            text5: $text5,
                            gain: $gain,
                            score: $score,
                            price: $price,
                            Wprice: $Wprice,
                            Wgain: $Wgain
                        )) {
                            Image(systemName: "cart.badge.plus")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(white: 0.2))
                                .cornerRadius(30)
                        }
                        // MARK: add Weekly nav link
                        NavigationLink(destination: AddWeekly(
                            isHidden1: $WisHidden1,
                            isHidden2: $WisHidden2,
                            isHidden3: $WisHidden3,
                            WisHidden1Saved: $WisHidden1Saved,
                            WisHidden2Saved: $WisHidden2Saved,
                            WisHidden3Saved: $WisHidden3Saved,
                            text1: $Wtext1,
                            text2: $Wtext2,
                            text3: $Wtext3,
                            Wtext1Saved: $Wtext1Saved,
                            Wtext2Saved: $Wtext2Saved,
                            Wtext3Saved: $Wtext3Saved,
                            dis1: $Wdis1,
                            dis2: $Wdis2,
                            dis3: $Wdis3,
                            Wdis1Saved: $Wdis1Saved,
                            Wdis2Saved: $Wdis2Saved,
                            Wdis3Saved: $Wdis3Saved,
                            minutes: $Wminutes,
                            seconds: $Wseconds,
                            started: $Wstarted,
                            WminutesSaved: $WminutesSaved,
                            WsecondsSaved: $WsecondsSaved,
                            WstartedSaved: $WstartedSaved,
                            result: $Wresult,
                            count: $Wcount,
                            timer: $Wtimer,
                            WresultSaved: $WresultSaved,
                            WcountSaved: $WcountSaved,
                            currentDate: $WcurrentDate,
                            WsavedDate: $WsavedDate
                        )) {
                            Image(systemName: "plus")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(white: 0.2))
                                .cornerRadius(30)
                        }
                        
                        
                    }
                    .padding()
                    Spacer()
                }
            }
            .navigationTitle("Weekly")
            .tint(Color(white: 0.2))
            // MARK: on appear
        }.onAppear {
            WisHidden1 = WisHidden1Saved
            WisHidden2 = WisHidden2Saved
            WisHidden3 = WisHidden3Saved
            Wtext1 = Wtext1Saved
            Wtext2 = Wtext2Saved
            Wtext3 = Wtext3Saved
            Wgain = WgainSaved
            Wprice = WpriceSaved
            Wdis1 = Wdis1Saved
            Wdis2 = Wdis2Saved
            Wdis3 = Wdis3Saved
            Wminutes = WminutesSaved
            Wseconds = WsecondsSaved
            Wstarted = WstartedSaved
            WcurrentDate = Date(timeIntervalSince1970: WsavedDate)
            setupNavigationBarAppearance()
            if (Wdis1 || Wdis2 || Wdis3) {
                WstartTimer()
            }
        }
    }
    // MARK: Weekly timer
    func WstartTimer() {
        Wtimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            Wresult = isOneMinuteAfter(startTime: WcurrentDate)
            if Wresult {
                Wdis1 = false
                Wdis2 = false
                Wdis3 = false
                WstopTimer()
            }
            Wcount += 1
        }
    }
    func WstopTimer() {
        // Stop the first timer if it's running
        Wtimer?.invalidate()
        Wtimer = nil
        Wstarted = false
    }

    func isOneMinuteAfter(startTime: Date) -> Bool {
        // Calculate one minute later
        if let oneMinuteLater = Calendar.current.date(byAdding: .hour, value: 1, to: startTime) {
            let WcurrentTime = Date()
            
            // Calculate the time left
            let timeLeft = oneMinuteLater.timeIntervalSince(WcurrentTime)
            if timeLeft > 0 {
                Wminutes = Int(timeLeft) / 60
                Wseconds = Int(timeLeft) % 60
            }
            // Compare if the current time is after one minute later
            return WcurrentTime >= oneMinuteLater
        }
        
        // In case date calculation fails, return false
        return false
    }
}
//MARK: Add Weekly view
struct AddWeekly: View {
    @Binding var isHidden1: Bool
    @Binding var isHidden2: Bool
    @Binding var isHidden3: Bool
    
    @Binding var WisHidden1Saved: Bool
    @Binding var WisHidden2Saved: Bool
    @Binding var WisHidden3Saved: Bool
    
    @Binding var text1: String
    @Binding var text2: String
    @Binding var text3: String
    
    @Binding var Wtext1Saved: String
    @Binding var Wtext2Saved: String
    @Binding var Wtext3Saved: String
    
    @Binding var dis1: Bool
    @Binding var dis2: Bool
    @Binding var dis3: Bool
    
    @Binding var Wdis1Saved: Bool
    @Binding var Wdis2Saved: Bool
    @Binding var Wdis3Saved: Bool
    
    @Binding var minutes: Int
    @Binding var seconds: Int
    @Binding var started: Bool
    
    @Binding var WminutesSaved : Int
    @Binding var WsecondsSaved : Int
    @Binding var WstartedSaved : Bool
    
    @Binding var result: Bool
    @Binding var count: Int
    @Binding var timer: Timer?
    
    @Binding var WresultSaved : Bool
    @Binding var WcountSaved : Int
    
    @Binding var currentDate: Date
    @Binding var WsavedDate: Double
    
    //MARK: Weekly Notification
    @AppStorage("weeklyNotiStart") private var weeklyNotiStartSaved = false
    @State public var weeklyNotiStart = false {
        didSet {
            weeklyNotiStartSaved = weeklyNotiStart
        }
    }
    
    @State var weeklyNotificationIdentifier = "weeklyQuestNotification"

    func sendWeeklyNotification() {
        weeklyNotiStart = true
        weeklyNotificationIdentifier = "weeklyQuestNotification" // Use a fixed identifier

        let content = UNMutableNotificationContent()
        content.title = "Horray!"
        content.body = "Weekly Quests are Ready to Be Claimed!"
        content.sound = .default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3600, repeats: false)

        let request = UNNotificationRequest(identifier: weeklyNotificationIdentifier, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error scheduling notification: \(error)")
            } else {
                weeklyNotiStart = false
                print("Notification scheduled with identifier: \(weeklyNotificationIdentifier)")
            }
        }
    }

    func cancelWeeklyNotification() {
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [weeklyNotificationIdentifier])
        print("Notification with identifier \(weeklyNotificationIdentifier) canceled.")
    }
    // MARK: Weekly timer 2
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            result = isOneMinuteAfter(startTime: currentDate)
            if result {
                dis1 = false
                dis2 = false
                dis3 = false
                stopTimer()
            }
            count += 1
        }
    }
    func stopTimer() {
        // Stop the first timer if it's running
        timer?.invalidate()
        timer = nil
        started = false
    }

    func isOneMinuteAfter(startTime: Date) -> Bool {
        // Calculate one minute later
        if let oneMinuteLater = Calendar.current.date(byAdding: .hour, value: 1, to: startTime) {
            let currentTime = Date()
            
            // Calculate the time left
            let timeLeft = oneMinuteLater.timeIntervalSince(currentTime)
            if timeLeft > 0 {
                minutes = Int(timeLeft) / 60
                seconds = Int(timeLeft) % 60
            }
            // Compare if the current time is after one minute later
            return currentTime >= oneMinuteLater
        }
        
        // In case date calculation fails, return false
        return false
    }
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                // MARK: text for add challenges
                switch WDcount {
                case 1:
                    challengeView(
                        placeholder: "Name of challenge 1",
                        text: $text1,
                        isHidden: $isHidden1,
                        action: { dis1 = true;
                            Wdis1Saved = true
                            isHidden1 = false
                            WisHidden1Saved = false
                            Wtext1Saved = text1
                            
                            if weeklyNotiStart{
                                cancelWeeklyNotification()
                                sendWeeklyNotification()
                            }else{
                                sendWeeklyNotification()
                            }
                            if isHidden2 {
                                WDcount += 1
                            }
                            if !isHidden2 && isHidden3 {
                                WDcount += 2
                            }
                            if started == false {
                                currentDate = Date()
                                startTimer()
                            }
                            
                        }
                    )
                case 2:
                    challengeView(
                        placeholder: "Name of challenge 2",
                        text: $text2,
                        isHidden: $isHidden2,
                        action: { dis2 = true;
                            Wdis2Saved = true
                            isHidden2 = false
                            WisHidden2Saved = false
                            Wtext2Saved = text2
                            if weeklyNotiStart{
                                cancelWeeklyNotification()
                                sendWeeklyNotification()
                            }else{
                                sendWeeklyNotification()
                            }
                            if isHidden3 {
                                WDcount += 1
                            }else if isHidden1 {
                                WDcount -= 1
                            }
                            if started == false {
                                currentDate = Date()
                                startTimer()
                            }
                        }
                    )
                case 3:
                    challengeView(
                        placeholder: "Name of challenge 3",
                        text: $text3,
                        isHidden: $isHidden3,
                        action: { dis3 = true;
                            Wdis3Saved = true
                            isHidden3 = false
                            WisHidden3Saved = false
                            Wtext3Saved = text3
                            if weeklyNotiStart{
                                cancelWeeklyNotification()
                                sendWeeklyNotification()
                            }else{
                                sendWeeklyNotification()
                            }
                            if isHidden2 {
                                WDcount -= 1
                            }else if isHidden1 && !isHidden2{
                                WDcount -= 2
                            }
                            if started == false {
                                currentDate = Date()
                                startTimer()
                            }
                        }
                    )
                default:
                    Text("ERROR")
                        .foregroundColor(.red)
                    Button(action: {
                        Dcount = 1
                    }) {
                        Text("Reset")
                            .foregroundColor(.red)
                            .font(.headline)
                            .padding()
                            .background(Color(white: 0.2))
                            .cornerRadius(30)
                    }
                }
                
            }
            .navigationTitle("Add Daily Challenge")
        }
    }

    
    private func challengeView(
        placeholder: String,
        text: Binding<String>,
        isHidden: Binding<Bool>,
        action: @escaping () -> Void
    ) -> some View {
        VStack {
            TextField(placeholder, text: text)
                .frame(minHeight: 100)
                .foregroundStyle(Color.white)
                .background(Color(white: 0.2))
                .font(.largeTitle)
                .cornerRadius(10)
                .padding()
            HStack{
                Button(action: {
                    isHidden.wrappedValue = false
                    WisHidden1Saved = false
                    action()
                }) {
                    Image(systemName: "checkmark.seal")
                        .font(.largeTitle)
                        .foregroundStyle(Color.white)
                        .padding(10)
                }
                //MARK: On Disappear
            }.background(Color(white: 0.3))
                .cornerRadius(10)
        }.onDisappear{
            WisHidden1Saved = isHidden1
            WisHidden2Saved = isHidden2
            WisHidden3Saved = isHidden3
            Wdis1Saved = dis1
            Wdis2Saved = dis2
            Wdis3Saved = dis3
            WminutesSaved = minutes
            WsecondsSaved = seconds
            WstartedSaved = started
        }
    }
}

    #Preview {
        ContentView()
    }
