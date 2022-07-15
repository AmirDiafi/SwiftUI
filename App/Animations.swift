//
//  Animations.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct Animations: View {
    
    @State var isAnimated: Bool = false
    @State var isLiked: Bool = false
    var body: some View {
        VStack {
            
            SwiftUI.Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 100 : 0)
                .fill(isAnimated ? Color.green : Color.red)
                .frame(
                    width: isAnimated ? 300 : 100,
                    height: isAnimated ? 300 : 100
                )
                .rotationEffect(isAnimated ? .degrees(90) : .degrees(0))
                .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            
            SwiftUI.Spacer()
            
            RoundedRectangle(cornerRadius: 100)
                .fill(Color.white)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .overlay(
                    Button(action: {
                        withAnimation(Animation.default) {
                            isLiked.toggle()
                        }
                    }) {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .font(.system(size: 40))
                            .foregroundColor(isLiked ? .red : .black)
                    }
                    
                )
            
            SwiftUI.Spacer()
            
            Button(action: {
                withAnimation()
                {
                    isAnimated.toggle()
                }
            }) {
                Text("Animated")
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            SwiftUI.Spacer()
            
        }
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
