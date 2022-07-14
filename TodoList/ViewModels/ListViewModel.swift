//
//  ListViewModel.swift
//  TodoList
//
//  Created by abe chen on 2022/7/14.
//

import Foundation

/*
 CRUD FUNCTION
 
 Create
 Read
 Update
 Delete
 */

// 將 ListViewModel 變成 environment variable, 將 view Model 型別改成 ObservableObject
class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItem = [
            ItemModel(title: "This is fisrt model", isCompleted: false),
            ItemModel(title: "This is second model", isCompleted: true),
            ItemModel(title: "This is third model", isCompleted: false),
        ]
        items.append(contentsOf: newItem)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(form: IndexSet, to: Int) {
        items.move(fromOffsets: form, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
//        if let index = items.firstIndex { existingItem in
//            return existingItem.id == item.id
//        } {
//            // run code
//        }
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
}
