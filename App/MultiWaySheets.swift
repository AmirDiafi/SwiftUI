//
//  MultiSheets.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct MultiWaySheets: View {
    @State var isOpen: Bool = false
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Button(action: {
                    withAnimation() {
                        isOpen.toggle()
                    }
                }) {
                    Text("\(isOpen ? "Close" : "Open") Sheet")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                
            }
            
            
//              MARK: METHOD ONE WITH SHEET
//                .sheet(isPresented: $isOpen, onDismiss: {
//                    isOpen = false
//                }, content: {
//                    SheetCont(isOpen: $isOpen)
//                })
                
//              MARK: METHOD TWO WITH TRANSITION
//                if isOpen {
//                    SheetCont(isOpen: $isOpen)
//                        .transition(.move(edge: .bottom))
//                        .animation(.easeIn)
//                        .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
//                }
            
//            MARK: METHOD THREE WITH ANIMATION
                SheetCont(isOpen: $isOpen)
                    .padding(.top, 200)
                    .offset(y: isOpen ? 0 : UIScreen.main.bounds.height)
                    .animation(.spring())
                
        }
    }
}



struct SheetCont: View {
    
    @Binding var isOpen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea()
            VStack {
                Button(action: {
                    withAnimation() {
                        isOpen = false
                    }
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                        .font(.system(size: 40))
                        .padding()
                }
            }
        }
    }
}

struct MultiSheets_Previews: PreviewProvider {
    static var previews: some View {
        MultiWaySheets()
    }
}
