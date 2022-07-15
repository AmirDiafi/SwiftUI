//
//  AnimationCurves.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct AnimationCurves: View {
    @State var isAnimating: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                withAnimation() {
                    isAnimating.toggle()
                }
            }) {
                Text("Animate")
            }
            
            VStack {
                Text("Default")
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: isAnimating ? 50 : 250, height: 50)
                    .animation(.default)
            }

            VStack{
                Text("Spring")
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: isAnimating ? 50 : 250, height: 50)
                    .animation(
                        .spring(
                            response: 1,
                            dampingFraction: 0.5,
                            blendDuration: 1.0)
                    )
            }

            VStack{
                Text("Ease In")
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: isAnimating ? 50 : 250, height: 50)
                    .animation(.easeIn)
            }

            VStack{
                Text("Ease Out")
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: isAnimating ? 50 : 250, height: 50)
                    .animation(.easeOut)
            }

            VStack{
                Text("Ease In Out")
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: isAnimating ? 50 : 250, height: 50)
                    .animation(.easeInOut)
            }

            VStack{
                Text("Linear")
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: isAnimating ? 50 : 250, height: 50)
                    .animation(.linear)
            }
        }
    }
}

struct AnimationCurves_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurves()
    }
}
