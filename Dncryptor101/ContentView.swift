//
//  ContentView.swift
//  Dncryptor101
//
//  Created by denis0001-dev on 07.05.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("A List Item")
                Text("A Second List Item")
                Text("A Third List Item")
            }
            .navigationTitle("Dncryptor101")
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    NavigationLink {
                        AboutView()
                    } label: {
                        Image(systemName: "info.circle")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
        VStack {
            
        }
    }
}

#Preview {
    ContentView()
}
