//
//  ViewModel.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 09/07/2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    // MARK: - Properties
    @Published var tasks: [TaskModel] = [] {
        didSet {
            saveTask()
        }
    }
    @Published var newTask = ""
    @Published var selectedTask: TaskModel?
    let keyUD = "ketUD"
    
    // Progress View Property
    var completionRate: Double {
        let totalTasks = tasks.count
        let completionTasks = tasks.filter( { $0.isCompleted }).count
        return totalTasks > 0 ? Double(completionTasks) / Double(totalTasks) : 0
    }
    
    // MARK: - Initializer
    init() {
        getTasks()
    }
    
    // MARK: - Methods
    func getTasks() {
        guard let data = UserDefaults.standard.data(forKey: keyUD) else { return }
        
        do {
            let decodeTasks = try JSONDecoder().decode([TaskModel].self, from: data)
            DispatchQueue.main.async {
                self.tasks = decodeTasks
            }
        } catch {
            print("Error download tasks: \(error.localizedDescription)")
        }
    }
    
    func saveTask() {
        do {
            let encodeTasks = try JSONEncoder().encode(tasks)
            UserDefaults.standard.set(encodeTasks, forKey: keyUD)
        } catch {
            print("Error saving tasks: \(error.localizedDescription)")
        }
    }
    
    func addTask(task: String) {
        let newTask = TaskModel(title: task)
        tasks.append(newTask)
    }
    
    func isCompletedTask(task: TaskModel) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
    
    func deleteTask(task: IndexSet) {
        tasks.remove(atOffsets: task)
    }
    
    func updateTask(id: UUID, title: String) {
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            tasks[index].title = title
        }
    }
}
