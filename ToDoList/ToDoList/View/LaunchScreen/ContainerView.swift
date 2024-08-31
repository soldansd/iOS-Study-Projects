//
//  ContainerView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 29/07/2024.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var isLauchScreenViewPresented = true
    
    var body: some View {
        if !isLauchScreenViewPresented {
            ContentView()
        } else {
            LaunchScreenView(isPresented: $isLauchScreenViewPresented)
        }
    }
}

#Preview {
    ContainerView()
}
