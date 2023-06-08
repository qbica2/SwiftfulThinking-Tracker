//
//  NavigationViewBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 8.06.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                NavigationLink("to other screen") {
                    MyOtherScreen()
                }
                
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic) // default
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "person.fill")
                    }
                    
                }
                
                ToolbarItem (placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "flame.fill")
                    }
                    
                }
                
                ToolbarItem (placement: .navigationBarTrailing) {
                    NavigationLink(destination: MyOtherScreen()) {
                        Image(systemName: "gear")
                    }
                    .tint(.indigo)

                }
            }
      
          
        }
    }
}

struct MyOtherScreen: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
                .navigationTitle("Mint screen")
            
            NavigationLink("To Green Screen") {
                GreenScreen()
            }
        }
    }
}

struct GreenScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green screen")
                .navigationBarBackButtonHidden(true)
            
            Button("back".uppercased()) {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
