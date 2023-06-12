//
//  TextfieldBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 9.06.2023.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var secontText: String = ""
    @State var thirtText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here ...", text: $textFieldText)
                    .padding()
                    .background(.gray.opacity(0.4))
                    .cornerRadius(10)
                    .font(.headline)
                    .foregroundColor(.red)
                    .submitLabel(.continue)
                    .onSubmit {
                        print("sadas")
                    }
                    
                
                TextField("Type something here ...", text: $secontText)
                    .padding()
                    .background(.gray.opacity(0.4))
                    .cornerRadius(10)
                    .font(.headline)
                    .foregroundColor(.red)
                    .submitLabel(.done)
                    .onSubmit {
                        print("sadas")
                    }
                
                TextField("Type something here ...", text: $thirtText)
                    .padding()
                    .background(.gray.opacity(0.4))
                    .cornerRadius(10)
                    .font(.headline)
                    .foregroundColor(.red)
//                    .submitLabel(.go)
                    .submitLabel(.join)
                    .onSubmit {
                        print("sadas")
                    }
                
                Button {
                    if isTextFieldValid() {
                        saveText()
                    }
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextFieldValid() ? .blue : .gray)
                        .cornerRadius(10)
                        .font(.headline)
                        .foregroundColor(.red)
                }
                .disabled(!isTextFieldValid())
                
                List {
                    Section {
                        ListSection(items: $dataArray)
                    } header: {
                        if dataArray.count != 0 {
                            ListHeader(title: "Todos", logo: Image(systemName: "list.bullet.clipboard"))
                        }
                       
                    }
                    
                }
                .listStyle(.inset)
                
                Spacer()
            }
            .padding()
            
            .navigationTitle("TextField Bootcamp!")
        }
        
    }
    
    func isTextFieldValid() -> Bool {
        
        let trimmedText = textFieldText.trimmingCharacters(in: .whitespaces)

        if trimmedText.count >= 3 {
            return true
        }
        
        return false
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
