//
//  Extracts.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct Extracts: View {
    
    var columns : [GridItem] = [
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
    ]
    
    var body: some View {
        SwiftUI.ScrollView {
            header
            content
        }
        .background(
            Color.red.ignoresSafeArea()
        )
    }
    
    var header : some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: .infinity, height: 400)
        }
    }
    
    var content : some View {
        LazyVGrid(
            columns: columns,
            alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
            spacing: 5,
            pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/,
            content: {
                ForEach(0..<50, content: {index in
                    Rectangle()
                        .frame(height: 150)
                })
            }
        )
    }
    
}

struct Extracts_Previews: PreviewProvider {
    static var previews: some View {
        Extracts()
    }
}
