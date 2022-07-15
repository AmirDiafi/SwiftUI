//
//  Storage.swift
//  App
//
//  Created by AmirDiafi on 7/6/22.
//

import SwiftUI

struct Storage: View {
//    @State var name: String?
    @AppStorage("name") var name: String?
    @AppStorage("name") var yourName: String?
    
    var body: some View {
        VStack {
            Text("name: \(name ?? "add name here")")
            Text("your name is: \(yourName ?? "????")")
            Button(action:{
                name = "Zakaria"
//                UserDefaults.standard.setValue(name, forKey: "name")
            }) {
                Text("save".uppercased())
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(width: 100)
                    .padding(10)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            .padding(.top, 20)
            
        }
        .onAppear() {
//            name = UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct Storage_Previews: PreviewProvider {
    static var previews: some View {
        Storage()
            .previewDevice("iPhone 12")
    }
}
