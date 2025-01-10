import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry()
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> Void) {
        completion(SimpleEntry())
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> Void) {
        let entry = SimpleEntry()
        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date = Date()
}

struct Quest_WidgetEntryView: View {
    @AppStorage("text1Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text1WidSaved: String = "Default Value"
    @AppStorage("text2Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text2WidSaved: String = "Default Value"
    @AppStorage("text3Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text3WidSaved: String = "Default Value"
    @AppStorage("text4Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text4WidSaved: String = "Default Value"
    @AppStorage("text5Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var text5WidSaved: String = "Default Value"
    @AppStorage("Wtext1Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var Wtext1WidSaved: String = "Default Value"
    @AppStorage("Wtext2Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var Wtext2WidSaved: String = "Default Value"
    @AppStorage("Wtext3Wid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var Wtext3WidSaved: String = "Default Value"
    @AppStorage("scoreWid", store: UserDefaults(suiteName: "group.Dawson.Reminder-Quests"))
    private var scoreWidSaved: Int = 0

    var entry: Provider.Entry
    @Environment(\.widgetFamily) var widgetFamily
    
    var body: some View {
        switch widgetFamily {
        case .systemSmall:
            VStack {
                HStack{
                    HStack{
                        Text(text1WidSaved.isEmpty ? "" : text1WidSaved)
                            .padding(2)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }.frame(minWidth: 50)
                        .foregroundColor(.white)
                        .background(Color(white: 0.2))
                        .cornerRadius(10)
                        .padding(2)
                    HStack{
                        Text(text2WidSaved.isEmpty ? "" : text2WidSaved)
                            .padding(2)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }.frame(minWidth: 50)
                        .foregroundColor(.white)
                        .background(Color(white: 0.2))
                        .cornerRadius(10)
                        .padding(2)
                }
                HStack{
                    HStack{
                        Text(text3WidSaved.isEmpty ? "" : text3WidSaved)
                            .padding(2)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }.frame(minWidth: 50)
                        .foregroundColor(.white)
                        .background(Color(white: 0.2))
                        .cornerRadius(10)
                        .padding(2)
                    HStack{
                        Text(text4WidSaved.isEmpty ? "" : text4WidSaved)
                            .padding(2)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }.frame(minWidth: 50)
                        .foregroundColor(.white)
                        .background(Color(white: 0.2))
                        .cornerRadius(10)
                        .padding(2)
                }
                HStack{
                    Text(text5WidSaved.isEmpty ? "" : text5WidSaved)
                        .padding(2)
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }.frame(minWidth: 50)
                    .foregroundColor(.white)
                    .background(Color(white: 0.2))
                    .cornerRadius(10)
                    .padding(2)
            }
            .containerBackground(for: .widget) {
                LinearGradient(
                    gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
        case .systemMedium:
            HStack {
                VStack {
                    HStack{
                        HStack{
                            Text(text1WidSaved.isEmpty ? "" : text1WidSaved)
                                .padding(2)
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }.frame(minWidth: 50)
                            .foregroundColor(.white)
                            .background(Color(white: 0.2))
                            .cornerRadius(10)
                            .padding(2)
                        HStack{
                            Text(text2WidSaved.isEmpty ? "" : text2WidSaved)
                                .padding(2)
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }.frame(minWidth: 50)
                            .foregroundColor(.white)
                            .background(Color(white: 0.2))
                            .cornerRadius(10)
                            .padding(2)
                    }
                    HStack{
                        HStack{
                            Text(text3WidSaved.isEmpty ? "" : text3WidSaved)
                                .padding(2)
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }.frame(minWidth: 50)
                            .foregroundColor(.white)
                            .background(Color(white: 0.2))
                            .cornerRadius(10)
                            .padding(2)
                        HStack{
                            Text(text4WidSaved.isEmpty ? "" : text4WidSaved)
                                .padding(2)
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }.frame(minWidth: 50)
                            .foregroundColor(.white)
                            .background(Color(white: 0.2))
                            .cornerRadius(10)
                            .padding(2)
                    }
                    HStack{
                        Text(text5WidSaved.isEmpty ? "" : text5WidSaved)
                            .padding(2)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }.frame(minWidth: 50)
                        .foregroundColor(.white)
                        .background(Color(white: 0.2))
                        .cornerRadius(10)
                        .padding(2)
                }
                .containerBackground(for: .widget) {
                    LinearGradient(
                        gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                }
                VStack {
                    HStack{
                        HStack{
                            Text(Wtext1WidSaved.isEmpty ? "" : Wtext1WidSaved)
                                .padding(2)
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }.frame(minWidth: 50)
                            .foregroundColor(.white)
                            .background(Color(white: 0.2))
                            .cornerRadius(10)
                            .padding(2)
                        HStack{
                            Text(Wtext2WidSaved.isEmpty ? "" : Wtext2WidSaved)
                                .padding(2)
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }.frame(minWidth: 50)
                            .foregroundColor(.white)
                            .background(Color(white: 0.2))
                            .cornerRadius(10)
                            .padding(2)
                    }
                    HStack{
                        Text(Wtext3WidSaved.isEmpty ? "" : Wtext3WidSaved)
                            .padding(2)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }.frame(minWidth: 50)
                        .foregroundColor(.white)
                        .background(Color(white: 0.2))
                        .cornerRadius(10)
                        .padding(2)
                }
            }
        case .systemLarge:
            VStack {
                VStack{
                    Label("\(scoreWidSaved)", systemImage: "sparkles")
                        .frame(minWidth: 50)
                            .foregroundColor(.white)
                            .background(Color(white: 0.3))
                            .cornerRadius(10)
                            .padding(2)
                    Text("Daily")
                }
                HStack{
                    Text(text1WidSaved.isEmpty ? "" : text1WidSaved)
                        .padding(2)
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }.frame(minWidth: 50)
                    .foregroundColor(.white)
                    .background(Color(white: 0.2))
                    .cornerRadius(10)
                    .padding(2)
                HStack{
                    Text(text2WidSaved.isEmpty ? "" : text2WidSaved)
                        .padding(2)
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }.frame(minWidth: 50)
                    .foregroundColor(.white)
                    .background(Color(white: 0.2))
                    .cornerRadius(10)
                    .padding(2)
                HStack{
                    Text(text3WidSaved.isEmpty ? "" : text3WidSaved)
                        .padding(2)
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }.frame(minWidth: 50)
                    .foregroundColor(.white)
                    .background(Color(white: 0.2))
                    .cornerRadius(10)
                    .padding(2)
                HStack{
                    Text(text4WidSaved.isEmpty ? "" : text4WidSaved)
                        .padding(2)
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }.frame(minWidth: 50)
                    .foregroundColor(.white)
                    .background(Color(white: 0.2))
                    .cornerRadius(10)
                    .padding(2)
                HStack{
                    Text(text5WidSaved.isEmpty ? "" : text5WidSaved)
                        .padding(2)
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }.frame(minWidth: 50)
                    .foregroundColor(.white)
                    .background(Color(white: 0.2))
                    .cornerRadius(10)
                    .padding(2)
                HStack{
                    Text("Weekly")
                }
                HStack{
                    HStack{
                        Text(Wtext1WidSaved.isEmpty ? "" : Wtext1WidSaved)
                            .padding(2)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }.frame(minWidth: 50)
                        .foregroundColor(.white)
                        .background(Color(white: 0.2))
                        .cornerRadius(10)
                        .padding(2)
                    HStack{
                        Text(Wtext2WidSaved.isEmpty ? "" : Wtext2WidSaved)
                            .padding(2)
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }.frame(minWidth: 50)
                        .foregroundColor(.white)
                        .background(Color(white: 0.2))
                        .cornerRadius(10)
                        .padding(2)
                }
                HStack{
                    Text(Wtext3WidSaved.isEmpty ? "" : Wtext3WidSaved)
                        .padding(2)
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                }.frame(minWidth: 50)
                    .foregroundColor(.white)
                    .background(Color(white: 0.2))
                    .cornerRadius(10)
                    .padding(2)
            }
            .containerBackground(for: .widget) {
                LinearGradient(
                    gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
        default:
            Text("Unsupported Size")
        }
    }
}

struct Quest_Widget: Widget {
    let kind: String = "Quest_Widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { _ in
            Quest_WidgetEntryView(entry: SimpleEntry())
        }
        .configurationDisplayName("Quest Widget")
        .description("Displays saved text from the app.")
    }
}

#Preview(as: .systemSmall) {
    Quest_Widget()
} timeline: {
    SimpleEntry()
}
