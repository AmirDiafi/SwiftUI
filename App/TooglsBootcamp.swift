//
//  TooglsBootcamp.swift
//  App
//
//  Created by AmirDiafi on 6/27/22.
//

import SwiftUI

struct TooglsBootcamp: View {
    @State var isOn: Bool = false
    var body: some View {
        VStack {
            Text("Status: \(String(describing: isOn))")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Toggle(isOn: $isOn) {
                Text("Change Status")
            }
            .padding()
            SwiftUI.Spacer()
        }
    }
}

struct TooglsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TooglsBootcamp()
    }
}
