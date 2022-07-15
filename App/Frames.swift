//
//  Frames.swift
//  App
//
//  Created by AmirDiafi on 6/23/22.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(maxWidth: .infinity, maxHeight: 100, alignment: .leading)
            .background(Color.green)
            .frame(height: 200, alignment: .bottom)
            .background(Color.red)
            .frame(height: 400, alignment: .top)
            .background(Color.orange)
    }
}

struct Frames_Previews: PreviewProvider {
    static var previews: some View {
        Frames()
    }
}
