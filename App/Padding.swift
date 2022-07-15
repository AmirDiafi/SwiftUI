//
//  Padding.swift
//  App
//
//  Created by AmirDiafi on 6/24/22.
//

import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("Hello World!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("This is the stack and the padding episode, it talks about the padding and the stacks in SwiftUI, SwiftUI is a frame work from Apple Inc, it is a framework to design and develop a ios applications.")
                .font(.headline)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .background(
            Color.white
                .shadow(color: Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 30)
        )
        .padding(.horizontal)
        
    }
}

struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
