//
//  Quest_WidgetBundle.swift
//  Quest Widget
//
//  Created by Dawson Delap on 1/8/25.
//

import WidgetKit
import SwiftUI

@main
struct Quest_WidgetBundle: WidgetBundle {
    var body: some Widget {
        Quest_Widget()
        Quest_WidgetControl()
        Quest_WidgetLiveActivity()
    }
}
