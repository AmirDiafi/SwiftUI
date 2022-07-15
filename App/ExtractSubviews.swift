//
//  ExtractSubviews.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI


struct ExtractSubviews: View {
    var people = [PersonType]()
    
    init(people: [PersonType]) {
        self.people = people
    }
    
    var body: some View {
        VStack {
            Text("Title")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity)
            SwiftUI.ScrollView {
                VStack(spacing: 8) {
                    ForEach(0..<people.count, content: {index in
                        UserItem(
                            name: people[index].name,
                            quate: people[index].quate,
                            image: people[index].image
                        )
                    })
                }
                .padding(.horizontal)
            }
        }
        .background(Color.blue.ignoresSafeArea())
    }

}

struct ExtractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviews(people: getPeopleData())
    }
}
