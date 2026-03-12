//
//  TodoListModel.swift
//  TodoList
//
//  Created by Thiago Lourenço on 10/03/26.
//

import Foundation

struct TodoListModel: Identifiable {
    let id: String
    let name: String
    let isCompleted: Bool
    
    init(name: String, isCompleted: Bool = false, id: String = UUID().uuidString) {
        self.id = id
        self.name = name
        self.isCompleted = isCompleted
    }
    
    func updateList() -> TodoListModel {
        return TodoListModel(name: name, isCompleted: !isCompleted, id: id)
    }
}

