//
//  UserItem.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct UserItem: View {
    var name: String = ""
    var quate: String = ""
    var image: String = "prfl"
    
    init(name: String, quate: String?, image: String?) {
        self.name = name
        self.quate = quate ?? ""
        self.image = image ?? ""
    }
    
    var body: some View {
        LazyVStack(alignment: .leading) {
            HStack(spacing: 8) {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                VStack(alignment: .leading) {
                    Text("name: \(name)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text(quate)
                        .font(.headline)
                }
            }
        }
        .padding(10)
        .background(Color.gray)
        .cornerRadius(10)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
