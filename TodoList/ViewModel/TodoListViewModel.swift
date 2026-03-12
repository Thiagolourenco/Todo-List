//
//  TodoListViewModel.swift
//  TodoList
//
//  Created by Thiago Lourenço on 10/03/26.
//

import Foundation
import SwiftUI

@Observable
class TodoListViewModel {
    var items: [TodoListModel] = []
    
//    init() {
//        self.items = [
//            TodoListModel(name: "Buy groceries", isCompleted: true),
//            TodoListModel(name: "Read a book"),
//            TodoListModel(name: "Go for a walk")
//        ]
//    }
    
    func removeItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func onMoveItem(indexSet: IndexSet, item: Int) {
        items.move(fromOffsets: indexSet, toOffset: item)
    }
    
    func addNewItem(item: String) {
        items.append(contentsOf: [TodoListModel(name: item)])
    }
    
    func updateItem(item: TodoListModel) {
//        items.count.isMultiple(of: 2) ? items.append(contentsOf: [TodoListModel(name: "New Item")]) : ()
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = TodoListModel(name: item.name, isCompleted: !item.isCompleted)
        }
    }
}
