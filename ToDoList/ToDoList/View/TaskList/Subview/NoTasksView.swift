//
//  NoTasksView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 22/07/2024.
//

import SwiftUI

struct NoTasksView: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("THERE ARE NO TASKS\nWOULD YOU LIKE\nTO ADD?")
                .font(.title)
                .foregroundStyle(Color.toDoPrimary)
                .opacity(0.5)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            NavigationLink(destination: AddTaskView()) {
                ZStack {
                    Circle()
                        .frame(width: 100)
                        .foregroundStyle(Color.toDoPrimary)
                        .opacity(0.5)
                    
                    Image(systemName: "plus")
                        .foregroundStyle(Color.toDoBackground2)
                        .font(.largeTitle)
                }
            }
        }
    }
}


#Preview {
    NoTasksView()
        .preferredColorScheme(.dark)
}
