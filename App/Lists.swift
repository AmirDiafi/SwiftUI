//
//  Lists.swift
//  App
//
//  Created by AmirDiafi on 6/27/22.
//

import SwiftUI

struct Lists: View {
    let peopleData = getPeopleData()
    @State var fruits: [String] = ["Apple", "Orange", "Banana", "Peach"]
    var body: some View {
        NavigationView {
            List {
                if fruits.count > 0 {
                    Section(
                        header: HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                                .foregroundColor(.gray)
                        }
                        .font(.headline),
                        content: {
                            ForEach(fruits, id: \.self, content: { fruit in
                                Text(fruit)
                            })
                            .onDelete(perform: { indexSet in
                                deleteItem(indexSet: indexSet)
                            })
                            .onMove(perform: { indices, newOffset in
                                moveItem(indeces: indices, newOffset: newOffset)
                            })
                        }
                    )
//                    .listRowBackground(Color.gray)
                }
                Section(
                    header: HStack {
                        Text("People")
                        Image(systemName: "person.fill")
                            .foregroundColor(.gray)
                    }
                    .font(.headline),
                    content: {
                        ForEach(peopleData, id: \.self, content: {person in
                            NavigationLink(
                                destination: Profile(
                                    name: person.name,
                                    image: person.image,
                                    quate: person.quate
                                ),
                                label: {
                                    HStack {
                                        Image(person.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 60, height: 60)
                                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        Text(person.name)
                                            .font(.headline)
                                            .foregroundColor(Color.black)
                                    }
                                })
                        })
                    }
                )
            }
            .listStyle(InsetGroupedListStyle())
//            .accentColor(.gray)
            .navigationTitle("List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: AddItem(fruits: $fruits)
            )
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveItem(indeces: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indeces, toOffset: newOffset)
    }
}

struct AddItem: View {
    @Binding var fruits : [String]
    
    var body: some View {
        Button(action: addItem) {
            Text("Add")
        }
    }
    
    func addItem() {
        fruits.append("Coconut")
    }
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
