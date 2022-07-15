//
//  Colors.swift
//  App
//
//  Created by AmirDiafi on 6/23/22.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
            .stroke(Color(UIColor.systemBlue), lineWidth: 30)
            .frame(width: 200, height: 350)
    }
}

struct Colors_Previews: PreviewProvider {
    static var previews: some View {
        Colors()
            .preferredColorScheme(.light)
    }
}
