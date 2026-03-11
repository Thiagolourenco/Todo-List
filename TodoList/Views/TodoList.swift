//
//  TodoList.swift
//  TodoList
//
//  Created by Thiago Lourenço on 10/03/26.
//

import SwiftUI

struct TodoList: View {
//    @State var items: [TodoListModel] = [
//        TodoListModel(name: "Buy groceries", isCompleted: true),
//        TodoListModel(name: "Read a book"),
//        TodoListModel(name: "Go for a walk")
//    ]
    @Environment(TodoListViewModel.self) var viewModel: TodoListViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(viewModel.items) { item in
                        CardItem(item: item)
                    }
                    .onDelete(perform: viewModel.removeItem)
                    .onMove(perform: viewModel.onMoveItem)
                }
                .listStyle(.sidebar)
                Spacer()
            }
            .navigationTitle("Todo List")
            .toolbarRole(.navigationStack)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "plus")
                }
                ToolbarItem(placement: .topBarLeading) {
//                    Image(systemName: "pencil")
                    EditButton()
                    
                }
            }

        }
    }
    
  
}

#Preview {
    @Previewable var viewModel = TodoListViewModel()

    TodoList()
        .environment(viewModel)
    
}
