//
//  ProfileView.swift
//  Authentication
//
//  Created by Даниил Соловьев on 05/05/2024.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        if let user = viewModel.currentUser {
            List {
                 
                 Section {
                     
                     HStack {
                         Text(user.initials)
                             .font(.title)
                             .fontWeight(.semibold)
                             .foregroundStyle(.white)
                             .frame(width: 72, height: 72)
                             .background(Color(.systemGray3))
                             .clipShape(Circle())
                         
                         
                         VStack(alignment: .leading, spacing: 4) {
                             
                             Text(user.fullname)
                                 .font(.subheadline)
                                 .fontWeight(.semibold)
                                 .padding(.top, 4)
                             
                             Text(user.email)
                                 .font(.footnote)
                                 .foregroundColor(.gray)
                         }
                     }
                 }
                 
                 Section("GENERAL") {
                     HStack {
                         SettingsRowView(imageName: "gear",
                                         title: "Version",
                                         tintColor: Color(.systemGray))
                         
                         Spacer()
                         
                         Text("1.0.0")
                             .font(.subheadline)
                             .foregroundStyle(.gray)
                     }
                 }
                 
                 Section("ACCOUNT") {
                     
                     Button {
                         viewModel.signOut()
                     } label: {
                         SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign out", tintColor: .red)
                     }
                     
                     Button {
                         print("Delete account...")
                     } label: {
                         SettingsRowView(imageName: "xmark.circle.fill", title: "Delete account", tintColor: .red)
                     }
                 }
             }
        }
    }
}

#Preview {
    ProfileView()
}
