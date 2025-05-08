//
//  ViewExtensions.swift
//  Dncryptor101
//
//  Created by denis0001-dev on 08.05.2025.
//

import SwiftUI

func Navigation(@ViewBuilder content: () -> some View) -> some View {
    if #available(iOS 16.0, *) {
        return NavigationStack(root: content)
    } else {
        return NavigationView(content: content)
    }
}

extension View {
    func presentation() -> some View {
        if #available(iOS 16.0, *) {
            return self
                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
        } else {
            return self
        }
    }
}
