//
//  TodoList.swift
//  TodoList
//
//  Created by Thiago Lourenço on 10/03/26.
//

import SwiftUI

struct TodoList: View {
    @Environment(TodoListViewModel.self) private var viewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.items.isEmpty {
                        VStack(alignment: .center) {
                            Text("Ops, não temos nenhuma item")
                                .font(.title2)
                            Image(systemName: "exclamationmark.circle")
                                .font(.largeTitle)
                                .padding(.top)
                            
                            NavigationLink {
                                AddItem()
                            } label: {
                                Text("New Item")
                                    .padding()
                                    .foregroundStyle(.white)
                                    .bold()
                                    .background(.blue)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding()
                            }

                           
                                
                        }
                        .frame(height: 200)
                        .padding()
                        .background(.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                
                
                } else {
                    List {
                        ForEach(viewModel.items) { item in
                            CardItem(item: item)
                                .onTapGesture {
                                    withAnimation(.spring) {
                                        viewModel.updateItem(item: item)
                                    }
                                }
                        }
                        .onDelete(perform: viewModel.removeItem)
                        .onMove(perform: viewModel.onMoveItem)
                    }
                    .listStyle(.sidebar)
                    Spacer()
                }
               
            }
            .navigationTitle("Todo List")
            .toolbarRole(.navigationStack)
            .toolbar {
                ToolbarItem {
                    NavigationLink {
                        AddItem()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
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
