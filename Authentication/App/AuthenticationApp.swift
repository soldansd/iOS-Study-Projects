//
//  AuthenticationApp.swift
//  Authentication
//
//  Created by Даниил Соловьев on 05/05/2024.
//

import SwiftUI
import Firebase

@main
struct AuthenticationApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
