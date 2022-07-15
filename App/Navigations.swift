//
//  Navigations.swift
//  App
//
//  Created by AmirDiafi on 6/26/22.
//

import SwiftUI

struct Navigations: View {
    var peopleData: [PersonType] = getPeopleData()
    var body: some View {
        NavigationView {
            SwiftUI.ScrollView {
                ForEach(0..<peopleData.count, content: {index in
                    NavigationLink(
                        destination: Profile(
                            name: peopleData[index].name,
                            image: peopleData[index].image,
                            quate: peopleData[index].quate
                        ) ,
                        label: {
                            LazyVStack(alignment: .leading) {
                                HStack {
                                    HStack {
                                        Image(peopleData[index].image)
                                            .resizable()
                                            .frame(width: 60, height: 60)
                                            .scaledToFill()
                                            .cornerRadius(50)
                                        Text(peopleData[index].name)
                                            .multilineTextAlignment(.leading)
                                            .padding(5)
                                    }
                                    SwiftUI.Spacer()
                                    Image(systemName: "eye")
                                        .font(.system(size: 20))

                                }
                                .foregroundColor(.black)
                            }
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 5)

                        })
                        .padding(.horizontal, 10)
                })
            }
            .navigationTitle("Texts")
//            .navigationBarItems(
//                leading:
//                    NavigationLink(
//                        "List",
//                        destination: ScrollView(
//                            data: getPeopleData(),
//                            fromScreen: "Hey Amir",
//                            selectionTab: <#Binding<TabsType>#>
//                        )
//                    ),
//                trailing:
//                    HStack {
//                        Button(action: {}) {
//                            Image(systemName: "xmark")
//                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                                .foregroundColor(.black)
//                        }
//                    }
//            )
        }
    }
}

struct Profile: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String
    var image: String
    var quate: String?
    
    init(name: String, image: String, quate: String?) {
        self.name = name
        self.image = image
        self.quate = quate
    }
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Text(name)
                .font(.title)
                .foregroundColor(Color.black)
                .padding()
            
            Text(quate ?? "")
                .font(.headline)
                .foregroundColor(Color.black)
                .padding()
                .multilineTextAlignment(.center)
                .navigationTitle(name)
            
            SwiftUI.Spacer()
            Button(action:{
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Go back")
                    .padding()
                    .font(.subheadline)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            .navigationBarHidden(false)
        }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
