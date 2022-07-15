//
//  DarkMode.swift
//  App
//
//  Created by AmirDiafi on 6/28/22.
//

import SwiftUI

struct DarkMode: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            SwiftUI.ScrollView {
                VStack(spacing: 20) {
                    Text("Primary color")
                        .foregroundColor(.primary)
                    Text("Secondary color")
                        .foregroundColor(.secondary)
                    Text("This is black")
                        .foregroundColor(.black)
                    Text("Primary white")
                        .foregroundColor(.white)
                    Text("This is red")
                        .foregroundColor(.red)
                    Text("Globally adaptive - Main Color")
                        .foregroundColor(Color("mainColor"))
                    Text("locally adaptive - using color scheme")
                        .foregroundColor(
                            colorScheme == .dark ? .yellow  : .green)
                    
                }
            }
            
            .navigationTitle("Dark Mode")
        }
    }
}

struct DarkMode_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkMode()
                .preferredColorScheme(.light)
            
            DarkMode()
                .preferredColorScheme(.dark)
        }
    }
}
