//
//  Icons.swift
//  App
//
//  Created by AmirDiafi on 6/23/22.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "cloud.sun.rain.fill")
            .renderingMode(.original)
            .resizable()
//            .foregroundColor(.black)
            .scaledToFit()
            .frame(width: 300, height: 300)
            .background(Color.black)
            .cornerRadius(50)
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
