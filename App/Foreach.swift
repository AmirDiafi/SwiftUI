//
//  Foreach.swift
//  App
//
//  Created by AmirDiafi on 6/24/22.
//

import SwiftUI

struct Foreach: View {
    let people : [String] = ["Amir","Aissa","Zaki","Maria","Lynn"]
    var body: some View {
        VStack (spacing: 5) {
            ForEach(0..<people.count) { index in
                Text("Hey: \(people[index])")
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.orange)
                    .cornerRadius(30)
            }
        }
        
    }
}

struct Foreach_Previews: PreviewProvider {
    static var previews: some View {
        Foreach()
    }
}
