//
//  Spacer.swift
//  App
//
//  Created by AmirDiafi on 6/24/22.
//

import SwiftUI

struct Spacer: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image(systemName: "xmark")
                    SwiftUI.Spacer()
                    Image(systemName: "gear")
                }
                .font(.title)
                .padding(.horizontal)
            }
            SwiftUI.Spacer()
            Text("This is footer")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.black)
        }
    }
}

struct Spacer_Previews: PreviewProvider {
    static var previews: some View {
        Spacer()
    }
}
