//
//  Images.swift
//  App
//
//  Created by AmirDiafi on 6/23/22.
//

import SwiftUI

struct Images: View {
    var body: some View {
       Image("prfl")
        .resizable()
        .scaledToFill()
        .frame(width: 300, height: 200)
//        .cornerRadius(180)
//        .clipped()
        .clipShape(
//            /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
//            Ellipse()
            RoundedRectangle(cornerRadius: 180)
        )
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
