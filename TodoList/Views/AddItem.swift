//
//  AddItem.swift
//  TodoList
//
//  Created by Thiago Lourenço on 11/03/26.
//

import SwiftUI

struct AddItem: View {
    @State var inputValue: String = ""
    
    var body: some View {
        VStack {
            TextField("New Item", text: $inputValue)
                .padding(.vertical)
                .padding(.horizontal)
                .background(.gray.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
            
            Spacer()
            Text("Add Item")
                .font(Font.headline.bold())
                .foregroundStyle(.white)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(.black.opacity(0.7))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
            
        }
        .navigationBarBackButtonHidden()
        .navigationTitle("Add new Item")
    }
}

#Preview {
    NavigationStack {
        AddItem()

    }
}
