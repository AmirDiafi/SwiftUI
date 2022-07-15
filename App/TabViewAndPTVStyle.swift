//
//  TabViewAndPTVStyle.swift
//  App
//
//  Created by AmirDiafi on 6/28/22.
//

import SwiftUI

struct TabViewAndPTVStyle: View {
    @State var selection: TabsType = .Home
    
    var body: some View {
        TabView(selection: $selection) {
            
            ZStack {
                Color.red.ignoresSafeArea()
                Button(action: {
                    selection = TabsType.Latest
                }) {
                    Text("Go To Profile")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(15)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }.tabItem {
                Image(
                    systemName:
                        selection == TabsType.Home ?
                        "house.fill" : "house"
                )
                Text("Home")
            }.tag(TabsType.Home)
            
                
            ScrollView(
                data: getPeopleData(),
                fromScreen: "Tabs",
                selectionTab: $selection
                
            )
                .tabItem {
                    Image(
                        systemName:
                            selection == TabsType.Latest ?
                            "flame.fill" : "flame"
                    )
                    Text("Latest")
                }.tag(TabsType.Latest)

            
            ZStack {
                Color.green.ignoresSafeArea()
                Navigations()
            }.tabItem {
                Image(
                    systemName:
                        selection == TabsType.Times ?
                        "clock.fill" : "clock"
                )
                Text("Times")
            }.tag(TabsType.Times)
            
            
            ZStack {
                Color.yellow.ignoresSafeArea()
                Lists()
            }.tabItem {
                Image(
                    systemName:
                        selection == TabsType.Profile ?
                        "person.fill" : "person"
                )
                Text("Profile")
            }.tag(TabsType.Profile)
            
        }
        .accentColor(Color(.systemRed))
        
    }
}

enum TabsType {
    case Home
    case Latest
    case Times
    case Profile
}

struct TabViewAndPTVStyle_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAndPTVStyle()
    }
}
