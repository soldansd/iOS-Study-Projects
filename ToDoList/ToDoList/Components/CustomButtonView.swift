//
//  CustomButtonView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 16/07/2024.
//

import SwiftUI

struct CustomButtonView: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    @Environment(\.dismiss) var dismiss
    let titleButton: String
    let action: () -> ()
    
    // MARK: - Body
    var body: some View {
        Button {
            action()
            dismiss()
        } label: {
            Text(titleButton)
                .font(.headline)
                .padding()
                .foregroundStyle(Color.toDoBackground1)
                .frame(maxWidth: .infinity)
                .background(Color.toDoAccent)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
        }
    }
}


// MARK: - Preview
#Preview {
    CustomButtonView(titleButton: "Add Task") {}
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
