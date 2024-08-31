//
//  TaskRowView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 16/07/2024.
//

import SwiftUI

struct TaskRowView: View {
    
    // MARK: - Properties
    var model: TaskModel
    let action: () -> ()
    
    // MARK: - Body
    var body: some View {
        HStack {
            // MARK: Title
            Text("\(model.title)")
                .strikethrough(model.isCompleted)
                .foregroundStyle(model.isCompleted              ?
                                 Color.toDoPrimary.opacity(0.5) :
                                 Color.white
                )
            
            Spacer()
            
            // MARK: Task Completion Toggle
            Button {
                action()
            } label: {
                Image(systemName: model.isCompleted ? "checkmark.circle.fill" : "circle")
                   // .foregroundStyle(/*@START_MENU_TOKEN@*/SecondaryContentStyle()/*@END_MENU_TOKEN@*/)
            }
            .buttonStyle(.borderless)
        }
        .font(.headline)
        .padding()
        .background(Color.toDoPrimary.opacity(model.isCompleted ? 0.1 : 0.25))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .padding(.vertical, 6)
    }
}

#Preview {
    List {
        TaskRowView(model: TaskModel(title: "Task 1", isCompleted: true)) {}
        TaskRowView(model: TaskModel(title: "Task 2", isCompleted: false)) {}
    }
    .listStyle(.plain)
    .preferredColorScheme(.dark)
}
