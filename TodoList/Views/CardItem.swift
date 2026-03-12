//
//  CardItem.swift
//  TodoList
//
//  Created by Thiago Lourenço on 10/03/26.
//

import SwiftUI

struct CardItem: View {
    let item: TodoListModel
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
                .foregroundStyle(item.isCompleted ? .green : .gray)
                .onTapGesture {
                    
                }
            Text(item.name)
                .font(.headline)
        }
    }
}

#Preview {
    let item1 = TodoListModel(name: "Fazer compras", isCompleted: false)
    CardItem(item: item1)
}
