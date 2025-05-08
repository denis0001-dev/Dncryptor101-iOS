//
//  SettingsView.swift
//  Dncryptor101
//
//  Created by denis0001-dev on 08.05.2025.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @AppStorage("theme") private var theme = "system"
    
    var body: some View {
        ZStack {
            VStack {
                Text("Выберите тему")
                    .font(.headline)
                    .padding()
                
                Picker("Выберите тему", selection: $theme) {
                    Text("Light").tag("light")
                    Text("Dark").tag("dark")
                    Text("As System").tag("system")
                }
                .pickerStyle(.segmented)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Settings")
    }
}
