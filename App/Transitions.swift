//
//  Transitions.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct Transitions: View {
    var height : CGFloat = 450
    @State var isOpen : Bool = false
    var body: some View {
        VStack {
            Button(action: {
                withAnimation() {
                    isOpen.toggle()
                }
            }) {
                Text("\(isOpen ? "Close" : "Open")")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(width: 150)
            .padding()
            .background(Color.blue)
            .cornerRadius(15)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            SwiftUI.Spacer()
            
            if isOpen {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: .infinity, height: height)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                  - with animation:
//                    .offset(y: isOpen ? 0 : height)
            
//                  - with transition:
                    .transition(.move(edge: .bottom))
                    .animation(.default)
                     
//                  - with asymmetric (insertion and removal):
//                    .transition(
//                        .asymmetric(
//                            insertion: .move(edge: .leading),
//                            removal: .move(edge: .trailing))
//                    )
//                    .animation(.spring())
                
//                  - with opacity transition:
//                    .transition(AnyTransition.opacity.animation(.easeIn))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Transitions()
    }
}
