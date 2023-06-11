//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 11.06.2023.
//

import SwiftUI

class EnvironmentObjectViewModel : ObservableObject {
    
    @Published var dataArray: [String] = []
       
       init() {
           getData()
       }
       
       func getData() {
           self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch", "Vision Pro"])
       }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentObjectViewModel = EnvironmentObjectViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                            .foregroundColor(.white)
                    }

                }
                .padding(.vertical, 10)
                .listRowSeparator(.hidden)
                .listRowBackground(Color.blue.opacity(0.6))
            }
            
            
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.mint.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.pink)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }

        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentObjectViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.4)]),
                startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView {
                VStack (spacing: 30) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
