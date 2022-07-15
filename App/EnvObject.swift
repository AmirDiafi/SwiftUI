//
//  EnvObject.swift
//  App
//
//  Created by AmirDiafi on 7/6/22.
//

import SwiftUI

struct PhoneNames: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let type: String
}

struct PhoneTypes: Identifiable {
    let id: String = UUID().uuidString
    let name: String
}

class PhoneModel: ObservableObject {
    @Published var iPhone : [PhoneNames] = []
    @Published var samsung : [PhoneNames] = []
    @Published var types : [PhoneTypes] = []
    
    init() {
        types.append(PhoneTypes.init(name: "iPhone"))
        types.append(PhoneTypes.init(name: "samsung"))
        
        iPhone.append(PhoneNames.init(name: "iPhone X", type: "iPhone"))
        iPhone.append(PhoneNames.init(name: "iPhone 11", type: "iPhone"))
        iPhone.append(PhoneNames.init(name: "iPhone 12", type: "iPhone"))
        iPhone.append(PhoneNames.init(name: "iPhone 13", type: "iPhone"))
        samsung.append(PhoneNames.init(name: "Galaxy S", type: "Samsung"))
    }
    
    func onDelete(indexSet: IndexSet) {
        iPhone.remove(atOffsets: indexSet)
    }
    
}

struct EnvObject: View {
    @StateObject var phones: PhoneModel = PhoneModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(phones.types, content: {type in
                    NavigationLink(
                        destination: DetailsView(selectedPhone: type.name),
                        label: {
                            Text(type.name)
                        })
                })
            }
        }
        .environmentObject(phones)
    }
}


struct DetailsView : View {
    @EnvironmentObject var phones: PhoneModel
    var selectedPhone: String
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            List {
                ForEach(phones.iPhone, content: {phone in
                    NavigationLink(
                        destination: ThirdUI(selectedPhone: phone.name),
                        label: {
                            Text(phone.name)
                        })
                })
                .onDelete(perform: { indexSet in
                    phones.onDelete(indexSet: indexSet)
                })
            }
        }
        .navigationTitle(selectedPhone)
    }
}

struct ThirdUI: View {
    var selectedPhone : String
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("Selected: \(selectedPhone)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)

        }
        .navigationTitle("Third UI")
        .foregroundColor(.white)
    }
}

struct EnvObject_Previews: PreviewProvider {
    static var previews: some View {
        EnvObject()
            .previewDevice("iPhone 11")
    }
}
