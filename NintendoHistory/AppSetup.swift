//
//  AppSetup.swift
//  NintendoHistory
//
//  Created by Алексей Голованов on 02.04.2024.
//

import SwiftUI

class AppSetup: ObservableObject {
    @AppStorage("titleOn") var titleOn = true
    @AppStorage("rowHeight") var rowHeight: Double = 0
    @AppStorage("statistic") var statistic: String = "Продажи"
}
