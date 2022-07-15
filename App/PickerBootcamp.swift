//
//  PickerBootcamp.swift
//  App
//
//  Created by AmirDiafi on 6/27/22.
//

import SwiftUI

let options: [String] = ["Most Views", "Most Liked", "Most Recents"]

struct PickerBootcamp: View {
    @State var selectedItem: People = People.Zakaria
    @State var pickerOptions: [String] = options
    @State var selectedPicker: String = options[0]
    
    enum People: String {
        case Zakaria
        case Maria
        case Lynn
        case Afnal
    }
    
    var body: some View {
        
        VStack {
            
            Text("You Selected: \(selectedPicker)")
            Picker(
                selection: $selectedPicker,
                label: Text("Picker"),
                content: {
                    ForEach(pickerOptions, id: \.self, content: {option in
                        HStack {
                            Text(option)
                                .font(.title)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        }
                        .tag(option)
                    })
                    .background(Color.red)
                    .cornerRadius(30)
                }
                
            )
            .pickerStyle(SegmentedPickerStyle())
            .padding()            
            
            
            
            Picker(
                selection: $selectedPicker,
                label: HStack {
                    Text("Filter by:")
                    Text(selectedPicker)
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(15)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/),
                content: {
                    ForEach(pickerOptions, id: \.self, content: {option in
                        HStack {
                            Text(option)
                            Image(systemName: "flame.fill")
                        }
                        .tag(option)
                    })
                }
            )
            .pickerStyle(MenuPickerStyle())
            
            
            
            
            Picker(
                selection: $selectedItem,
                label: Text("Picker"),
                content: {
                    Text("Zakaria")
                        .tag(People.Zakaria)
                        .font(.title)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Maria")
                        .tag(People.Maria)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Lynn")
                        .tag(People.Lynn)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("Afnal")
                        .tag(People.Afnal)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
            })
            .pickerStyle(WheelPickerStyle())
            Text("You selected: \(selectedItem.rawValue)")
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
