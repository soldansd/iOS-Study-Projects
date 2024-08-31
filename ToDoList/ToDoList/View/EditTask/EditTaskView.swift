//
//  EditTaskView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 16/07/2024.
//

import SwiftUI

struct EditTaskView: View {
    // MARK: - Properites
    @EnvironmentObject var vm: ViewModel
    @Environment(\.dismiss) var dismiss
    var task: TaskModel
    
    var body: some View {
        VStack {
            
            HStack(alignment: .center) {
                
                Text("Edit Task")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .overlay(alignment: .topLeading) {
                        Button {
                           dismiss()
                        } label: {
                            Text("Cancel")
                                .frame(width: 56)
                                .foregroundStyle(Color.toDoAccent)
                        }
                    }
                    .padding(.vertical)
                
            }
            
            CustomTextFieldView(placeholder: "Edit Your Task")
            
            CustomButtonView(titleButton: "Save") {
                vm.updateTask(id: task.id, title: vm.newTask)
            }
            
            Spacer()
        }
        .padding()
        .background(BackgroundView())
        .onAppear {
            vm.newTask = task.title
        }
    }
}


// MARK: - Preview
#Preview {
    EditTaskView(task: TaskModel(title: "Task 1"))
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
