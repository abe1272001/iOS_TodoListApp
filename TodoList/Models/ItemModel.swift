//
//  ItemModel.swift
//  TodoList
//
//  Created by abe chen on 2022/7/14.
//

import Foundation

struct ItmeModel: Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
