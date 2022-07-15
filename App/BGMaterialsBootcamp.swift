//
//  BGMaterialsBootcamp.swift
//  App
//
//  Created by AmirDiafi on 7/12/22.
//

import SwiftUI

struct BGMaterialsBootcamp: View {
    var body: some View {
        VStack {
            SwiftUI.Spacer()
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(height: 400)
                .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("prfl")
                .resizable()
                .scaledToFill()
                .blur(radius: 0)
                
        )
    }
}

struct BGMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BGMaterialsBootcamp()
    }
}
