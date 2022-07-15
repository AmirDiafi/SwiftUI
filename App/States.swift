//
//  States.swift
//  App
//
//  Created by AmirDiafi on 6/25/22.
//

import SwiftUI

struct States: View {
    @State var name: String = "nobody!"
    @State var isOn: Bool = true
    var body: some View {
        VStack {
            Text("\(name)")
            Button(action: {
                self.name = "Amir Diafi"
            }) {
                Text("Change name")
            }
            
            Toggle(isOn: $isOn) {
                Text(isOn ? "On" : "Off")
            }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .padding()
            .background(
                Capsule()
                    .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 2)
            )
        }
    }
}

struct States_Previews: PreviewProvider {
    static var previews: some View {
        States()
    }
}
