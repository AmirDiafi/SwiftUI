//
//  ContentView.swift
//  App
//
//  Created by AmirDiafi on 6/23/22.
//

import SwiftUI

struct ContentView: View {
    var mainButton = MainButton(title: "Click Me", color: nil, background: nil )
    
    var body: some View {
        Text("hey there!".capitalized)
//            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//            .fontWeight(.regular)
//            .underline()
//            .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.red)
//            .italic()
//            .kerning(5)
//            .strikethrough()
//            .strikethrough(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.red)
            .font(.system(size: 24, weight: .bold, design: .monospaced))
//            .lineLimit(5)
            .baselineOffset(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.blue)
            .frame(width: 300, height: 150, alignment: .leading)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class MainButton {
    var title: String = ""
    var color: Color? = .white
    var background: Color? = .black
    
    init(title: String, color: Color?, background: Color?) {
        self.title = title
        self.color = color ?? self.color
        self.background = background ?? self.background
    }
    
    var button: some View {
        Button(title, action: {
            print("hey there")
        }).padding().foregroundColor(color).background(background)
    }
}
