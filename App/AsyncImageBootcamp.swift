//
//  AsyncImageBootcamp.swift
//  App
//
//  Created by AmirDiafi on 7/12/22.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    var body: some View {
        VStack {
            Text("Image: ")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            
            
        }
        
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            AsyncImageBootcamp()
        } else {
            // Fallback on earlier versions
        }
    }
}
