//
//  ListView.swift
//  TodoList
//
//  Created by abe chen on 2022/7/14.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItmeModel] = [
        ItmeModel(title: "This is fisrt model", isCompleted: false),
        ItmeModel(title: "This is second model", isCompleted: true),
        ItmeModel(title: "This is third model", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


