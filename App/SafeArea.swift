//
//  SafeArea.swift
//  App
//
//  Created by AmirDiafi on 6/25/22.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        SwiftUI.ScrollView {
            LazyVStack {
                Section(header: Text("Section here!"), content: {
                    ForEach(0..<30, content: {index in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(Color.black.opacity(0.5))
                            .frame(width: .infinity, height: 200)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    })
                })
                Section(header: Text("Section Two!"), content: {
                    ForEach(0..<30, content: {index in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(Color.gray.opacity(0.5))
                            .frame(width: .infinity, height: 200)
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    })
                })
            }
        }
        .background(
            Image("prfl")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct SafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SafeArea()
    }
}
