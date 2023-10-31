//
//  ContentView.swift
//  SwiftDataSample
//
//  Created by Hangyeol on 10/31/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var context
    
    @Query private var items: [DataItem]
    
    var body: some View {
        VStack {
            Text("Tap on this button to add data")
            Button("Add an item") {
                addItem()
            }
            
            List {
                ForEach(items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }
                    }
                }
                .onDelete { indices in
                    for index in indices {
                        deleteItem(items[index])
                    }
                }
            }
        }
        .padding()
    }
}

extension ContentView {
    private func addItem() {
        let item = DataItem(name: "Test Item")
        context.insert(item)
    }
    
    private func deleteItem(_ item: DataItem) {
        context.delete(item)
    }
    
    private func updateItem(_ item: DataItem) {
        item.name = "Updated Test Item"
        try? context.save()
    }
}

#Preview {
    ContentView()
}
