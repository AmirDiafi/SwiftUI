//
//  BadgesBootcamp.swift
//  App
//
//  Created by AmirDiafi on 7/12/22.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Text("Home").tabItem {
                Image(systemName: "house.fill")
            }
            .tag("Home")
            Text("Messages").tabItem {
                Image(systemName: "message.fill")
            }.tag("message")
            Text("Profile").tabItem {
                Image(systemName: "person.fill")
            }.tag("person")
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
