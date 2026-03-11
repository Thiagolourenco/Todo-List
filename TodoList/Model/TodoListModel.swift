//
//  TodoListModel.swift
//  TodoList
//
//  Created by Thiago Lourenço on 10/03/26.
//

import Foundation

struct TodoListModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    let isCompleted: Bool
    
    init(name: String, isCompleted: Bool = false) {
        self.name = name
        self.isCompleted = isCompleted
        
    }
}

