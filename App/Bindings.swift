//
//  Binding.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct Bindings: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            Header(counter: counter)
            IncreaseBtn(counter: $counter)
        }
    }
}

struct IncreaseBtn : View {
    
    @Binding var counter: Int
    
    var body: some View {
        Button(action: action) {
            Text("Increase me")
                .font(.title)
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
    }
    
    func action() {
        if counter < 10 {
            counter += 1
        }
    }
}

struct Header : View {
    var counter : Int
    
    init(counter: Int) {
        self.counter = counter
    }
    
    var body: some View {
        VStack {
            Text("Counter \(counter)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Binding_Previews: PreviewProvider {
    static var previews: some View {
        Bindings()
    }
}
