//
//  TaskListView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 09/07/2024.
//

import SwiftUI

struct TaskListView: View {
    
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    @State private var isEditViewPresented = false
    
    // MARK: - Body
    var body: some View {
        
        NavigationView {
            ZStack {
                //MARK: Background
                BackgroundView()
                
                VStack {
                    
                    if vm.tasks.isEmpty {
                        // MARK: Empty List
                        NoTasksView()
                    } else {
                        // MARK: List Of Tasks
                        List {
                            ForEach(vm.tasks) { task in
                                TaskRowView(model: task) {
                                    vm.isCompletedTask(task: task)
                                }
                                .onTapGesture {
                                    vm.selectedTask = task
                                    isEditViewPresented = true
                                }
                            }
                            .onDelete(perform: vm.deleteTask(task:))
                            // MARK: Edit View
                            .sheet(isPresented: $isEditViewPresented) {
                                if let taskToEdit = vm.selectedTask {
                                    EditTaskView(task: taskToEdit)
                                }
                            }
                        }
                        .listStyle(.plain)
                        
                        // MARK: Prigress View
                        ProgressView("Completion Tasks", value: vm.completionRate)
                            .progressViewStyle(LinearProgressViewStyle())
                            .tint(Color.toDoPrimary)
                            .padding()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(.horizontal)
                    }
                }
                
            }
            // MARK: - Navigation Bar
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: AddTaskView()) {
                        Image(systemName: "plus")
                            .foregroundStyle(Color.toDoPrimary)
                    }
                }
            }
        }
        
    }
    
}


// MARK: - Preview
#Preview {
    TaskListView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
