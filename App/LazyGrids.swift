//
//  LazyGrids.swift
//  App
//
//  Created by AmirDiafi on 6/24/22.
//

import SwiftUI

struct LazyGrids: View {
    let columns : [GridItem] = [
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
    ]
    
    func onaction() {
        print("hey")
    }

    
    var body: some View {
        VStack {
            SwiftUI.ScrollView() {
                Rectangle()
                    .frame(width: .infinity, height: 400)
                LazyVGrid(
                    columns: columns,
                    pinnedViews: [.sectionHeaders],
                          content: {
                    Section(
                        header:
                            Text("Section One!")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                        ,
                        content: {
                        ForEach(0..<50, content: {index in
                            Rectangle()
                                .fill(Color.black)
                                .frame(height: 150)
                        })
                    })
                    Section(
                        header:
                            Text("Section Two!")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .frame(maxWidth: .infinity, maxHeight: 50)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                        ,
                        content: {
                        ForEach(0..<50, content: {index in
                            Rectangle()
                                .fill(Color.red)
                                .frame(height: 150)
                        })
                    })
                })
            }
        }
    }
}

struct LazyGrids_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrids()
    }
}
