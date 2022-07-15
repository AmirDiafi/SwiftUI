////
////  FocusStateBootcamp.swift
////  App
////
////  Created by AmirDiafi on 7/12/22.
////
//
//import SwiftUI
//
//private enum FieldsType {
//    case username
//    case password
//}
//
//struct FocusStateBootcamp: View {
//    @State var username: String = ""
//    @State var password: String = ""
////    @FocusedState private var focusedField: FieldsType?
//
//    var body: some View {
//        VStack {
//            TextField("Username", text: $username)
//                .padding()
//                .background(Color.gray.opacity(0.2))
//                .cornerRadius(10)
//                .padding()
//            SecureField("Password", text: $password)
//                .padding()
//                .background(Color.gray.opacity(0.2))
//                .cornerRadius(10)
//                .padding()
//
//            Button(action: {
////                if focusedField == FieldsType.username{
////                    focusedField = .password
////                } else {
////                    focusedField = .username
////                }
//            }) {
//                Text("Go")
//                    .font(.title3)
//            }
//        }
//    }
//}
//
//struct FocusStateBootcamp_Previews: PreviewProvider {
//    static var previews: some View {
//        FocusStateBootcamp()
//    }
//}


import SwiftUI
struct HybridTextFieldUsageView: View {
    @State var password: String = ""
    @State var viewSecure: Bool = true
    var body: some View {
        //Use this anywhere in your code
        HybridTextField(text: $password, titleKey: "password")
    }
}
///Contains all the code for the Secure and regular TextFields
struct HybridTextField: View {
    @Binding var text: String
    @State var isSecure: Bool = true
    var titleKey: String
    var body: some View {
        HStack{
            Group{
                if isSecure{
                    SecureField(titleKey, text: $text)
                    
                }else{
                    TextField(titleKey, text: $text)
                }
            }.animation(.easeInOut(duration: 0.2), value: isSecure)
            //Add any common modifiers here so they dont have to be repeated for each Field
            Button(action: {
                isSecure.toggle()
            }, label: {
                Image(systemName: !isSecure ? "eye.slash" : "eye" )
            })
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
        .padding()
    }
}

struct HybridTextField_Previews: PreviewProvider {
    static var previews: some View {
        HybridTextFieldUsageView()
    }
}
