//
//  ScrollView.swift
//  App
//
//  Created by AmirDiafi on 6/24/22.
//

import SwiftUI

struct ScrollView: View {
    var data: [PersonType]
    var fromScreen : String
    @Binding var selectionTab: TabsType
    
    var body: some View {
        VStack {
            Text("From Screen: \(fromScreen)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                .padding()
            
            SwiftUI.ScrollView(showsIndicators: false) {
                ForEach(0..<data.count, content: {index in
                    LazyVStack(alignment: .leading, spacing: 15) {
                        Button(action: {
                            selectionTab = TabsType.Profile
                        }) {
                            HStack (spacing: 5) {
                                Image("prfl")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(100)
                                Text("\(data[index].name)")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2102593035, green: 0.2187103426, blue: 0.2166731916, alpha: 1)))
                                    .font(.headline)
                            }
                        }
                        Text("\(data[index].quate)")
                            .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            .font(.headline)
                        SwiftUI.ScrollView(.horizontal, showsIndicators: false, content: {
                            LazyHStack(spacing: 2, content: {
                                ForEach(0..<data.count) {index in
                                    Image("prfl")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 70, height: 75)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .shadow(
                                            color: Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2),
                                            radius: 2,
                                            x: 2,
                                            y: 4
                                        )
                                        .padding(2)
                                }
                            })
                        })
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        LinearGradient(
                            gradient: SwiftUI.Gradient(
                                colors: [Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)),Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                            startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                            endPoint: .trailing)
                    )
                    .cornerRadius(10)
                    .padding(.horizontal, 10)
                })
            }
        }
    }
}

//struct ScrollView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollView(data: getPeopleData(), fromScreen: "Here")
//    }
//}
