//
//  ContextMenuBootcamp.swift
//  App
//
//  Created by AmirDiafi on 6/27/22.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var bg: Color = Color.gray
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 40))
                    .accentColor(.white)
                Text("Welcome home!")
            }
            .padding(.all)
            .frame(width: UIScreen.main.bounds.width * 0.6, height: 200)
            .background(bg)
            .cornerRadius(15)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .contextMenu(
                ContextMenu(
                    menuItems: {
                        Button(action: {
                            bg = Color.red
                        }) {
                            Label(
                                title: { Text("To Red") },
                                icon: { Image(systemName: "flame.fill")}
                            )
                        }
                        Button(action: {
                            bg = Color.green
                        }) {
                            Label(
                                title: { Text("To Green") },
                                icon: { Image(systemName: "heart.fill")}
                            )
                        }
                        Button(action: {
                            bg = Color.yellow
                        }) {
                            Label(
                                title: { Text("To Yellow") },
                                icon: { Image(systemName: "cloud.fill")}
                            )

                        }
                    }
                )
            )
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
