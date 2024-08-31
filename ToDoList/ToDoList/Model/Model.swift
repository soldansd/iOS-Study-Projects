//
//  Model.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 09/07/2024.
//

import Foundation

struct TaskModel: Identifiable, Codable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}
