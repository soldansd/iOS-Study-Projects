//
//  ContentView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 09/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       TaskListView()
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
