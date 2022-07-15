//
//  onAppearDisappear.swift
//  App
//
//  Created by AmirDiafi on 6/29/22.
//

import SwiftUI

struct onAppearDisappear: View {
    @State var myTitle: String = "My Title"
    @State var counter: Int = 0
    var body: some View {
        NavigationView {
            SwiftUI.ScrollView{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(height: 200)
                    .padding()
                    .onAppear {
                        counter += 1
                    }
                    .onDisappear {
                        counter -= 1
                    }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    self.myTitle = "Hey how are you"
                }
            })
            .onDisappear(perform: {
                self.myTitle = "Ending the show."
            })
            .navigationTitle("Appears: \(counter.description)")
        }
    }
}

struct onAppearDisappear_Previews: PreviewProvider {
    static var previews: some View {
        onAppearDisappear()
    }
}
