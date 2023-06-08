//
//  ListBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 8.06.2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "orange", "peach", "mango", "grape", "watermelon"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot", "cucumber", "broccoli", "spinach"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    ListSection(items: $fruits)
                }
                header: {
                   ListHeader(title: "Fruits", logo: Image(systemName: "apple.logo"))
                }
                
                Section {
                    ListSection(items: $veggies)
                } header: {
                    ListHeader(title: "Veggies", logo: Image(systemName: "v.circle.fill"))
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem (placement: .navigationBarTrailing) {
                    AddButton
                }
            }
        }
    }
    
    var AddButton: some View {
        Button {
            addNewItemToList()
        } label: {
            Image(systemName: "plus")
        }
    }
    
    func addNewItemToList(){
        fruits.append("Coconut")
        veggies.append("beetroot")
    }
}

struct ListSection: View {
    
    @Binding var items: [String]
    
    var body: some View {
        ForEach(items, id: \.self) { item in
            ListRowItem(text: item)
                .listRowBackground(
                    LinearGradient(
                        gradient: Gradient(colors: [.pink.opacity(0.5), .pink.opacity(0.7)]),
                        startPoint: .trailing,
                        endPoint: .leading)
                )
        }
//        .onDelete { indexSet in
//            removeItemFromList(indexSet: indexSet)
//        }
        .onDelete(perform: removeItemFromList)
//        .onMove { indexSet, newOffSet in
//            moveItem(indexSet: indexSet, newOffSet: newOffSet)
//        }
        .onMove(perform: moveItem)
    }
    
    func removeItemFromList(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(indexSet: IndexSet, newOffSet: Int){
        items.move(fromOffsets: indexSet, toOffset: newOffSet)
    }
}

struct ListRowItem: View {
    let text: String
    var body: some View {
        Text(text.capitalized)
            .font(.caption)
            .foregroundColor(.white)
            .padding()
    }
}

struct ListHeader: View {
    
    let title: String
    let logo: Image
    
    var body: some View {
        HStack {
            Text(title)
            logo
        }
        .font(.headline)
        .foregroundColor(.orange)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
