//
//  TextSelectionBC.swift
//  App
//
//  Created by AmirDiafi on 7/12/22.
//

import SwiftUI

struct TextSelectionBC: View {
    var body: some View {
        VStack {
            Button(action:{}) {
                Text("Click me")
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                    )
                    
            }
//            .buttonStyle(.plain)
        }
    }
}

struct TextSelectionBC_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBC()
    }
}
