//
//  PickerBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 9.06.2023.
//

import SwiftUI

struct Filter: Identifiable {
    let id: Int
    let name: String
    let logo: Image
}

struct PickerBootcamp: View {
    
    @State var selection: String = "33"
    @State var selectedFilterID : Int = 1
    
    let filterOptions = [
        Filter(id: 1, name: "Most Liked", logo: Image(systemName: "heart.fill")),
        Filter(id: 2, name: "Most Popular", logo: Image(systemName: "flame.fill")),
        Filter(id: 3, name: "Most Recent", logo: Image(systemName: "bookmark.circle"))
    ]
    
    var body: some View {
        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(selection: $selection) {
//                ForEach(18..<99) { number in
//                    Text("\(number)")
//                        .tag("\(number)")
//                }
//            } label: {
//                Text("Select your Age")
//            }
//            .pickerStyle(.inline)

            
            Picker(selection: $selectedFilterID) {
                ForEach(filterOptions) { option in
                    HStack {
                        Text(option.name)
                        option.logo
                    }
                    .tag(option.id)
                }
            } label: {
                VStack{
                    Text("Filter:")
                    Text(filterOptions[selectedFilterID - 1].name)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
            }
            .pickerStyle(.menu)
//            .pickerStyle(.segmented)

        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
