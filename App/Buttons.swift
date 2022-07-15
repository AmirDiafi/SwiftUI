//
//  Buttons.swift
//  App
//
//  Created by AmirDiafi on 6/25/22.
//

import SwiftUI

struct Buttons: View {
    @State var title: String = "Title"
    @State var isTitleChanged: Bool = false
    @State var isLiked: Bool = false
    var body: some View {
        VStack {
            Text(title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)

            SwiftUI.Spacer()
            Button(action: action) {
                Image(systemName: "pencil")
                    .font(.title)
                Text("Edit".uppercased())
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .accentColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color: Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
            
            SwiftUI.Spacer()
            
            Circle()
                .fill(Color.white)
                .shadow(color: Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 5, x: 0, y: 5)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .overlay(
                    Button(action: {
                        isLiked = !isLiked
                    }) {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .font(.system(size: 35))
                            .foregroundColor(isLiked ? .red : .black)
                    }
                )
            SwiftUI.Spacer()
            
            Button(action: action) {
                Text("Clickable")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 2)
            )
            
            SwiftUI.Spacer()
        }
    }
    
    
    func action() {
        self.title = self.isTitleChanged ? "new title" : "old title"
        self.isTitleChanged = !self.isTitleChanged
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
