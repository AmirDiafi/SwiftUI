//
//  Sheets.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct Sheets: View {
    
    @State var isOpen: Bool = false
    @State var isFSOpen: Bool = false
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button(action: {
                    isOpen.toggle()
                }) {
                    Text("\(isOpen ? "Close" : "Open")")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color.black)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .cornerRadius(150)
                }
                
                Button(action: {
                    isFSOpen.toggle()
                }) {
                    Text("\(isFSOpen ? "Close FS" : "Open FS")")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                        .background(Color.black)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .cornerRadius(150)
                }
            }
            
            .fullScreenCover(isPresented: $isFSOpen, onDismiss: {
                isFSOpen = false
            }, content: {
//              MARK:  DO NOT ADD CONDITIONAL LOGIC HERE
                FSContent(isFSOpen: $isFSOpen)
            })
//            MARK: Even FSCover or Sheet..!
//            .sheet(isPresented: $isOpen, onDismiss: {
//                isOpen = false
//            }, content: {
//                SheetContent(isOpen: $isOpen)
//            })
        }
    }
}

struct SheetContent: View {
    @Binding var isOpen: Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.black.ignoresSafeArea()
            VStack (alignment: .leading) {
                Button(action: {
//                    presentationMode.wrappedValue.dismiss()
                    isOpen = false
                }) {
                    Image(systemName: "xmark")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                }
                SwiftUI.Spacer()
            }
            .padding()
            
        }
    }
}

struct FSContent: View {
    @Binding var isFSOpen: Bool
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.black.ignoresSafeArea()
            VStack (alignment: .leading) {
                Button(action: {
//                    presentationMode.wrappedValue.dismiss()
                    isFSOpen = false
                }) {
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundColor(.white)
                }
                SwiftUI.Spacer()
            }
            .padding()
            
        }
    }
}

struct Sheets_Previews: PreviewProvider {
    static var previews: some View {
        Sheets()
    }
}
