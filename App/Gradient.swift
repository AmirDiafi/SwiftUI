//
//  Gradient.swift
//  App
//
//  Created by AmirDiafi on 6/23/22.
//

import SwiftUI

struct Gradient: View {
    var body: some View {
//        LinearGradient(
//            gradient:
//                SwiftUI.Gradient(
//                    colors: [
//                        Color.red,
//                        Color.blue,
//                    ]
//                ),
//            startPoint: .topLeading,
//            endPoint: .bottomLeading
//        ).ignoresSafeArea()
        
        RadialGradient(
            gradient:
                SwiftUI.Gradient(
                    colors: [
                        Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)),
                        Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),
                        Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)),
                        Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)),
                        Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
                    ]
                ),
            center: .center,
            startRadius: 5,
            endRadius: 500
        ).ignoresSafeArea()
        
//        AngularGradient(
//            gradient: SwiftUI.Gradient(
//                colors: [
//                    Color.red,
//                    Color.blue
//                ]
//            ),
//            center: .center,
//            startAngle: /*@START_MENU_TOKEN@*/.zero/*@END_MENU_TOKEN@*/,
//            endAngle: .degrees(300)
//        )
        
    }
}

struct Gradient_Previews: PreviewProvider {
    static var previews: some View {
        Gradient()
    }
}
