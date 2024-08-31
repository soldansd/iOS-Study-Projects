//
//  AddTaskView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 09/07/2024.
//

import SwiftUI

struct AddTaskView: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    
    // MARK: - Background
    var body: some View {
        ZStack {
            
            //MARK: Background
            BackgroundView()
            
            VStack {
                
                // MARK: TextField
                CustomTextFieldView(placeholder: "Enter Your New Task")
                
                // MARK: Add Task Button
                CustomButtonView(titleButton: "Add Task") {
                    vm.addTask(task: vm.newTask)
                }
                .disabled(vm.newTask.isEmpty)
                
                Spacer()
            }
            .padding()
        }
        // MARK: - Navigation Bar
        .navigationTitle("Add task")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            
            // MARK: Back Button
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .font(.headline)
                    .foregroundColor(Color.toDoAccent)
            }
        }
        .onAppear {
            vm.newTask = ""
        }
    }
}

// MARK: - Preview
#Preview {
    NavigationView {
        AddTaskView()
            .environmentObject(ViewModel())
            .preferredColorScheme(.dark)
    }
}
