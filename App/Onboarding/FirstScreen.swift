//
//  FirstScreen.swift
//  App
//
//  Created by AmirDiafi on 7/11/22.
//

import SwiftUI

struct FirstScreen: View {
    @AppStorage("isSignedIn") var isSignedIn: Bool = false
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top))
    var body: some View {
        ZStack {
            //MARK: Background
            LinearGradient(
                gradient: SwiftUI.Gradient(
                    colors: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))]),
                startPoint: .top,
                endPoint: .bottom)
                .ignoresSafeArea()
            //MARK: Screen
            if isSignedIn {
                VStack(spacing: 40) {
                    Text("Welcome home!")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Button(action:{isSignedIn=false}) {
                        Text("Logout")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(height: 50)
                            .frame(maxWidth:.infinity)
                            .background(Color.red)
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding()
                    }
                }
                .transition(transition)
            } else {
                SecondScreen()
                    .transition(transition)
            }
        }
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
