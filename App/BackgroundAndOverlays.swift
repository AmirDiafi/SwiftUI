//
//  BackgroundAndOverlays.swift
//  App
//
//  Created by AmirDiafi on 6/24/22.
//

import SwiftUI

struct BackgroundAndOverlays: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: SwiftUI.Gradient(
                                colors: [Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomLeading)
                    )
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 0.6011076627)), radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                .foregroundColor(.white)
                                .font(.system(size: 18))
                            )
                            .shadow(color: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 0.6011076627)), radius: 10, x: 10, y: 10)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlays_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlays()
    }
}
