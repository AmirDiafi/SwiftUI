//
//  TextFieldBootcamp.swift
//  App
//
//  Created by AmirDiafi on 6/27/22.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var username: String = ""
    @State var values: [String] = []
    @State var title: String = ""
    
    
    func addValue() {
        values.append(username)
        username = ""
    }
    
    var body: some View {
        VStack {
            Text("Text Field \(title)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.bottom)
            
            TextField(
                "username",
                text: $username,
                onEditingChanged: {isClicked in
                title = "editing changed"
                },
                onCommit: {() in
                if isAppropriate(value: username) {
                    addValue()
                }
            })
                .keyboardType(.emailAddress)
                .padding()
                .frame(
                    width: UIScreen.main.bounds.width * 0.8,
                    height: 50
                )
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .font(.headline)
            
            Button(action: {
                if isAppropriate(value: username) {
                    addValue()
                }
            }) {
                Text("Save".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(
                        width: UIScreen.main.bounds.width * 0.8,
                        height: 50
                    )
                    .background(
                        isAppropriate(value: username) ? Color.blue : Color.gray)
                    .cornerRadius(10)
            }
            .disabled(!isAppropriate(value: username))
            
            ForEach(values, id: \.self, content: {value in
                Text(value)
            })
            
            SwiftUI.Spacer()
            
        }
    }
}

private func isAppropriate(value: String) -> Bool {
    return value.count > 2
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
