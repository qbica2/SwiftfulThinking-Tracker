//
//  ViewModelBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 11.06.2023.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Banana", count: 21)
        let fruit2 = FruitModel(name: "Apple", count: 32)
        let fruit3 = FruitModel(name: "Orange", count: 12)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: DispatchWorkItem(block: {
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
            self.isLoading = false
        }))

    }
    
    func deleteFruit(index: IndexSet){
        fruits.remove(atOffsets: index)
    }
    
    func addFruit(fruitName: String, fruitCount: Int) {
        let newFruit = FruitModel(name: fruitName, count: fruitCount)
        fruits.append(newFruit)
    }
    
}

struct ViewModelBootcamp: View {
    
   @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            
            .navigationTitle("Fruit List")
            .listStyle(.insetGrouped)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        RandomScreen(fruitViewModel: fruitViewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }

                }
            }
        }
    }
    
}

struct RandomScreen: View {
    
    @ObservedObject var fruitViewModel: FruitViewModel
    @State var fruitNameText: String = ""
    @State var fruitCount: Int = 0
    
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            
            VStack {
                
                VStack {
                    TextField("Fruit name", text: $fruitNameText)
                        .foregroundColor(.white)
                        .padding()
                        .background(
                            Color.secondary
                                .cornerRadius(12)
                        )
                    
                    HStack(spacing: 20) {
                        Text("Count")
                        Picker("Fruit Count", selection: $fruitCount) {
                            ForEach(0..<99) { count in
                                Text("\(count)")
                                    .tag(count)
                            }
                        }
                    }
                    
                }
                .padding()

                Button {
                    fruitViewModel.addFruit(fruitName: fruitNameText, fruitCount: fruitCount)
                } label: {
                    Text("Add Fruit")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            Color.pink
                                .cornerRadius(16)
                                .shadow(radius: 10)
                        )
                        
                }
                .padding()

                Spacer()
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
 
            
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
