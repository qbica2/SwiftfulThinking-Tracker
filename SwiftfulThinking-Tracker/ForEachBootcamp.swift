//
//  ForEachBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 6.06.2023.
//

import SwiftUI

struct Person {
    let id: Int
    let name: String
    let age: Int
    let gender: Gender
}

enum Gender{
    case male
    case female
    case unspecified
}

struct ForEachBootcamp: View {
    
    let data: [Person] = [
        Person(id: 1, name: "John", age: 25, gender: .male),
        Person(id: 2, name: "Jane", age: 30, gender: .female),
        Person(id: 3, name: "Alex", age: 40, gender: .unspecified),
        Person(id: 4, name: "Mahmut", age: 33, gender: .male)
    ]

    var body: some View {
//        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30 + CGFloat(index) * 5, height: 30 + CGFloat(index) * 5)
//                    Spacer()
//                    Text("Index is: \(index)")
//                }
//                .frame(width: 200)
//            }
//        }
        
       //MARK: - Real World Example
        VStack {
            ForEach(data, id: \.id) { person in
                VStack(spacing: 12) {
                    Text("ID: \(person.id)")
                    Text("Name: \(person.name)")
                    Text("Age: \(person.age)")
                    Text("Gender: \(getGenderString(person.gender))")
                }
                .padding()
                .font(.headline)
                .frame(maxWidth: .infinity)
                
            }
        }
    }
    
    func getGenderString(_ gender: Gender) -> String {
        switch gender {
        case .male:
            return "Male"
        case .female:
            return "Female"
        case .unspecified:
            return "Unspecified"
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
