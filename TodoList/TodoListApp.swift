//
//  TodoListApp.swift
//  TodoList
//
//  Created by Thiago Lourenço on 10/03/26.
//

import SwiftUI

@main
struct TodoListApp: App {
    @State private var viewModel = TodoListViewModel()
    
    var body: some Scene {
        WindowGroup {
//            NavigationStack {
                TodoList()
                    .environment(viewModel)
//            }
           
        }
    }
}

