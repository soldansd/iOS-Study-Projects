//
//  BackgroundView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 16/07/2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [Color.toDoBackground1, Color.toDoBackground2],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
