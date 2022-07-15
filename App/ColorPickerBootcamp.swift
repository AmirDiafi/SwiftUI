//
//  ColorPickerBootcamp.swift
//  App
//
//  Created by AmirDiafi on 6/28/22.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = Color.green
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            ColorPicker(
                "Pick a background color",
                selection: $backgroundColor,
                supportsOpacity: true
                )
                .padding()
                .background(Color.black.opacity(0.3))
                .cornerRadius(15)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
