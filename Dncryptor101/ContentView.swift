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
                        DetailView()
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

struct DetailView: View {
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

#Preview {
    ContentView()
}
