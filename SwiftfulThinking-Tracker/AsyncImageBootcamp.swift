//
//  AsyncImageBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/200")
    let url2 = URL(string: "https://picsum.photos/300")
    
    var body: some View {
        //        AsyncImage(url: url)
        VStack (spacing: 30) {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
                    .frame(width: 200, height: 200)
            }
            //MARK: - Realistic example
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            } placeholder: {
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.8), Color.gray.opacity(0.4)]), startPoint: UnitPoint.leading, endPoint: .trailing)
                    )
                    .frame(width: 200, height: 200)
            }
            
            
        }
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
