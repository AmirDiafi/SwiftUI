//
//  Enums.swift
//  App
//
//  Created by AmirDiafi on 6/24/22.
//

import SwiftUI

struct Enums: View {
    var bg: Color = Color.black
    var likesCount : Int = 0
    var title : String = "????"
    
    init(likesCount: Int, title: String, type: Rates) {
        self.title = title
        self.likesCount = likesCount
        
        if type == Rates.Good {
            bg = Color.green
        } else {
            bg = Color.red
        }
    }
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Text("\(likesCount)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        })
        .frame(width: 100, height: 100)
        .background(bg)
        .cornerRadius(10)
    }
}

struct Enums_Previews: PreviewProvider {
    static var previews: some View {
        let likesCount :Int = 50
        let base : Int = 100
        VStack (spacing: 5) {
            Enums(
                likesCount: likesCount,
                title: "Likes",
                type: likesCount >= base ? Rates.Good : Rates.Bad
            )
            Enums(
                likesCount: likesCount,
                title: "Likes",
                type: likesCount >= base ? Rates.Bad : Rates.Good
            )
        }
    }
}

enum Rates {
    case Good
    case Bad
}
