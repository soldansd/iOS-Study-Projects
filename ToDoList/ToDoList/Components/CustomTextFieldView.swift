//
//  CustomTextFieldView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 16/07/2024.
//

import SwiftUI

struct CustomTextFieldView: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $vm.newTask)
            .font(.headline)
            .padding()
            .background(Color.toDoPrimary.opacity(0.15))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}


// MARK: - Preview
#Preview {
    CustomTextFieldView(placeholder: "Enter Your New Task")
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
