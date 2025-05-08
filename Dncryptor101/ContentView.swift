//
//  ContentView.swift
//  Dncryptor101
//
//  Created by denis0001-dev on 07.05.2025.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("theme") var theme = "system"
    @State var encryptHelpSheetShown = false
    @State var decryptHelpSheetShown = false
    
    var body: some View {
        Navigation {
            List {
                NavigationLink {
                    EncryptView()
                } label: {
                    Label("Encrypt", systemImage: "lock.fill")
                }
                .contextMenu {
                    NavigationLink {
                        EncryptView()
                    } label: {
                        Label("Open", systemImage: "square.and.pencil")
                    }
                    NavigationLink {
                        EncryptView()
                    } label: {
                        Label("Open with Clipboard", systemImage: "clipboard")
                    }
                    Button {
                        encryptHelpSheetShown = true
                    } label: {
                        Label("Help", systemImage: "questionmark.circle")
                    }
                }
                NavigationLink {
                    DecryptView()
                } label: {
                    Label("Decrypt", systemImage: "lock.open.fill")
                }
                .contextMenu {
                    NavigationLink {
                        DecryptView()
                    } label: {
                        Label("Open", systemImage: "square.and.pencil")
                    }
                    NavigationLink {
                        DecryptView()
                    } label: {
                        Label("Open with Clipboard", systemImage: "clipboard")
                    }
                    Button {
                        decryptHelpSheetShown = true
                    } label: {
                        Label("Help", systemImage: "questionmark.circle")
                    }
                }
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
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "gear")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
        .preferredColorScheme(
            theme == "system" ?
                nil
            : theme == "dark" ? .dark : .light
        )
        .sheet(isPresented: $encryptHelpSheetShown) {
            Navigation {
                VStack(alignment: .leading) {
                    Text("This view allows you to encrypt your text easily.")
                    Text("To encrypt your text:")
                    Spacer().frame(height: 10)
                    Text("1. Open the view")
                    Text("2. Paste or type your text")
                    Text("3. Input a shift if nessecary")
                    Text("4. Click \"Encrypt\"")
                    Spacer().frame(height: 10)
                    Text("All done!")
                    Spacer()
                }
                .navigationTitle("Encryptor")
            }
            .presentation()
        }
        .sheet(isPresented: $decryptHelpSheetShown) {
            Navigation {
                VStack(alignment: .leading) {
                    Text("This view allows you to decrypt your text easily.")
                    Text("To decrypt your text:")
                    Spacer().frame(height: 10)
                    Text("1. Open the view")
                    Text("2. Paste or type your text")
                    Text("3. Input a shift if you know it")
                    Text("4. Click \"Decrypt\"")
                    Spacer().frame(height: 10)
                    Text("All done!")
                    Spacer()
                }
                .navigationTitle("Decryptor")
            }
            .presentation()
        }
    }
}

#Preview {
    ContentView()
}
