//
//  TodoListApp.swift
//  TodoList
//
//  Created by abe chen on 2022/7/14.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct TodoListApp: App {
    
    // 建立 StateObject 的 ListViewModel, 並掛載到 NavigationView
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
