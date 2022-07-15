//
//  ViewModelBootcamp.swift
//  App
//
//  Created by AmirDiafi on 7/6/22.
//

import SwiftUI

struct PersonModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName : String
    let age : Int
    let emailAddress: String
}

class PeopleViewModel: ObservableObject {
    @Published var people: [PersonModel] = []
    @Published var isLoading: Bool =  true
    
    init() {
        getPeople()
    }
    
    func deletePerson(index: IndexSet) {
        people.remove(atOffsets: index)
    }
    
    func movePerson(from: IndexSet, to: Int) {
        people.move(fromOffsets: from, toOffset: to)
    }
    
    func getPeople() {
        isLoading = true
        let personOne =  PersonModel.init(displayName: "Zakaria", age: 10, emailAddress: "amirdiafi2@gmail.com")
        let personTwo =  PersonModel.init(displayName: "Maria", age: 7, emailAddress: "amirdiafi2@gmail.com")
        let personThree =  PersonModel.init(displayName: "Lynn", age: 5, emailAddress: "amirdiafi2@gmail.com")
        let personFour =  PersonModel.init(displayName: "Afnal", age: 1, emailAddress: "amirdiafi2@gmail.com")
        people.append(personOne)
        people.append(personTwo)
        people.append(personThree)
        people.append(personFour)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.isLoading = false
        }

    }
}

struct ViewModelBootcamp: View {
    
    @StateObject var peopleViewModel: PeopleViewModel = PeopleViewModel()
    
    var body: some View {
        NavigationView {
            if peopleViewModel.isLoading {
                ProgressView()
            } else {
                List {
                    Section {
                        ForEach(peopleViewModel.people, content: {person in
                            HStack {
                                Circle()
                                    .frame(width: 50, height: 50)
                                VStack {
                                    Text(person.displayName)
                                    Text("age: \(person.age)")
                                }
                            }
                        })
                        .onDelete(perform: { indexSet in
                            peopleViewModel.deletePerson(index: indexSet)
                        })
                        .onMove(perform: { indices, newOffset in
                            peopleViewModel.movePerson(from: indices, to: newOffset)
                        })
                    }
                    
                
                }
                .navigationBarItems(
                    leading: EditButton(),
                    trailing:
                    NavigationLink(
                        destination: RandomScreen(peopleViewModel: peopleViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                                .accentColor(.black)
                        })
                )
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("Model View")
            }
        }
//        .onAppear() {
//            peopleViewModel.getPeople()
//        }
    }
    

}

struct RandomScreen : View {
    @ObservedObject var peopleViewModel: PeopleViewModel
    var body: some View {
        NavigationView {
            VStack {
                Text("Empty screen!!")
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
            .previewDevice("iPhone 12")
    }
}
