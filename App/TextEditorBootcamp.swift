//
//  TextEditorBootcamp.swift
//  App
//
//  Created by AmirDiafi on 6/27/22.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var value: String = ""
    
    func addValue() {
        value = ""
    }
    
    var body: some View {
            VStack {
                TextEditor(text: $value)
                    .onAppear(
                        perform: {
                            UITextView.appearance().backgroundColor = .clear
                        }
                    )
                    .background(Color.red)
                    .keyboardType(.emailAddress)
                    .frame(
                        width: UIScreen.main.bounds.width * 0.9,
                        height: 200
                    )
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray5), lineWidth: 2.0)
                    )
                    .padding(.vertical)
                
                Button(action: {
                    if isAppropriate(value: value) {
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
                            isAppropriate(value: value) ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                .disabled(!isAppropriate(value: value))
            }
            
            .navigationTitle("Text Editor")
        }
}

private func isAppropriate(value: String) -> Bool {
    return value.count > 2
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextEditorBootcamp()
                .preferredColorScheme(.light)
            TextEditorBootcamp()
                .previewDevice("iPhone 8")
        }
    }
}
