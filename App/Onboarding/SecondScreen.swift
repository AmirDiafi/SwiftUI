//
//  SecondScreen.swift
//  App
//
//  Created by AmirDiafi on 7/11/22.
//

import SwiftUI

struct SecondScreen: View {
    // Onboarding states:
    /*
     0- Welcome screen
     1- Add name
     2- Add age
     3- Add gender
     */
    
    //ONBOARDING STATES
    @State var onboardingState: Int = 0
    //INPUTS
    @State var name: String = ""
    @State var age: Double = 25
    @State var gender: Gender = .Male
    //ALERT FOR INPUTS
    @State var isAlertPresented: Bool = false
    @State var alertMessage: String = ""
    //APP STORAGE
    @AppStorage("isSignedIn") var isSignedIn: Bool?
    //STATE ANIMATION
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                    case 0:
                        welcomeSection
                            .transition(transition)
                    case 1:
                        addNameSection
                            .transition(transition)
                    case 2:
                        addAgeSection
                            .transition(transition)
                    case 3:
                        addGenderSection
                            .transition(transition)
                    default:
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.yellow)
                }
            }
            
            // buttons
            VStack {
                SwiftUI.Spacer()
                signInButton
            }
            .padding()
        }
        .background(
            Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
            .ignoresSafeArea()
        )
        .alert(isPresented: $isAlertPresented,
               content: {
                   return Alert(title: Text(alertMessage))
               }
        )
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}

//MARK: Components
extension SecondScreen {
    private var signInButton: some View {
        Button(action: {
            handleGoToNextScreen()
        }) {
            Text(onboardingState == 0 ?
                    "Sign up".uppercased() :
                    onboardingState == 3 ?
                    "Finish".uppercased() :
                    "Next".uppercased()
            )
                .font(.headline)
                .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                .bold()
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.white)
                .cornerRadius(10)
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            SwiftUI.Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .overlay(
                    Capsule(style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for finding your match online!. You can search to find your match, in your area or your place, by typing the map or in the input search.")
                .foregroundColor(.white)
                .font(.headline)
                .fontWeight(.medium)
            SwiftUI.Spacer()
            SwiftUI.Spacer()
        }
        .padding()
        .multilineTextAlignment(.center)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            SwiftUI.Spacer()
            Text("What is your name?")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.medium)
            
            TextField(
                "name",
                text: $name
            )
                .keyboardType(.default)
                .padding()
                .frame(
                    width: UIScreen.main.bounds.width * 0.8,
                    height: 50
                )
                .background(Color.white)
                .cornerRadius(10)
                .font(.headline)
                
            SwiftUI.Spacer()
            SwiftUI.Spacer()
        }
        .padding()
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            SwiftUI.Spacer()
            Text("What is age age?")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.medium)
            Text("Age: \(String(format: "%.0f", age))")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100,step: 1)
                .accentColor(Color.white)
                
            SwiftUI.Spacer()
            SwiftUI.Spacer()
        }
        .padding()
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            SwiftUI.Spacer()
            Text("What is age gender?")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.medium)
            
            Picker(
                selection: $gender,
                label:
                    Text(String(describing: gender) )
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .bold()
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                ,
                content: {
                    Text("Male").tag(Gender.Male)
                    Text("Female").tag(Gender.Female)
            })
                
            .pickerStyle(MenuPickerStyle())
            SwiftUI.Spacer()
            SwiftUI.Spacer()
        }
        .padding()
    }

}

//MARK: Functions
extension SecondScreen {
    private func handleGoToNextScreen() {
        
        //Check inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(message: "Your name must be at least 3 characters 🙂")
                return
            }
        default:
            break
        }
        
        //Check States
        withAnimation(.spring()) {
            if onboardingState == 3 {
                isSignedIn = true
            } else {
                onboardingState += 1
            }
        }

    }
    
    
    private func showAlert(message: String) {
        alertMessage = message
        isAlertPresented.toggle()
    }
}

enum Gender {
    case Male
    case Female
}
