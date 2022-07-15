//
//  Submit.swift
//  App
//
//  Created by AmirDiafi on 7/12/22.
//

import SwiftUI

struct Submit: View {
    @State var username: String = ""
    @State var submited: Bool = false
    var body: some View {
        VStack {
            Text(String(submited))
                .font(.title3)
            
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding()
            
            TextField(
                "username",
                text: $username,
                onEditingChanged: {_ in },
                onCommit: {
                    submited.toggle()
                }
            )
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
            .padding()
            
            
        }
    }
}

struct Submit_Previews: PreviewProvider {
    static var previews: some View {
        Submit()
    }
}
