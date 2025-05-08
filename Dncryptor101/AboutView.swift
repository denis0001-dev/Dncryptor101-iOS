//
//  AboutView.swift
//  Dncryptor101
//
//  Created by denis0001-dev on 08.05.2025.
//

import Foundation
import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            VStack {
                AppIcon()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                Text("Dncryptor101")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 5)
                Text("An app to help you encrypt & decrypt your text!")
                Spacer()
            }
            .padding()
        }
        .navigationTitle("About app")
    }
}
