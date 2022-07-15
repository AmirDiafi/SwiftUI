//
//  SwiftUIView.swift
//  App
//
//  Created by AmirDiafi on 6/23/22.
//

import SwiftUI


struct SwiftUIView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color("bg"))
            .frame(width: 170, height: 300)
            .shadow(color: Color("bg").opacity(0.7), radius: 30)
            
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            
    }
}
