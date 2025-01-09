//
//  Quest_WidgetLiveActivity.swift
//  Quest Widget
//
//  Created by Dawson Delap on 1/8/25.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct Quest_WidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct Quest_WidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: Quest_WidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension Quest_WidgetAttributes {
    fileprivate static var preview: Quest_WidgetAttributes {
        Quest_WidgetAttributes(name: "World")
    }
}

extension Quest_WidgetAttributes.ContentState {
    fileprivate static var smiley: Quest_WidgetAttributes.ContentState {
        Quest_WidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: Quest_WidgetAttributes.ContentState {
         Quest_WidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: Quest_WidgetAttributes.preview) {
   Quest_WidgetLiveActivity()
} contentStates: {
    Quest_WidgetAttributes.ContentState.smiley
    Quest_WidgetAttributes.ContentState.starEyes
}
