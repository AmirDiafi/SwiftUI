//
//  SliderBootcamp.swift
//  App
//
//  Created by AmirDiafi on 6/28/22.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var value: Float = 0
    @State var changedTimes: Int = 0
    var min: Float = 0
    var max: Float = 100
    var perStep: Float = 10.5
    
    var body: some View {
        VStack {
            Text("value: \(String(format: "%.0f", value))")
            Text("changed time: \(changedTimes.description)")
        Slider(value: $value)
        Slider(
            value: $value,
            in: min...max
        )
            Slider(
                value: $value,
                in: min...max,
                step: perStep,
                onEditingChanged: {_ in
                    changedTimes += 1
                }
            )
                
                Slider(
                    value: $value,
                    in: min...max,
                    step: perStep,
                    onEditingChanged: {_ in
                        changedTimes += 1
                    },
                    minimumValueLabel:
                        Text("Max")
                        .font(.title3)
                        .foregroundColor(.blue),
                    maximumValueLabel:
                        Text("Max")
                        .font(.title3)
                        .foregroundColor(.red),
                    label: {
                        Text("Hey")
                    }
                )
                
                Slider(value: $value,
                       in: min...max,
                       step: perStep,
                       onEditingChanged: {_ in
                        changedTimes += 1
                       },
                       minimumValueLabel: Text("🌚"),
                       maximumValueLabel: Text("🌝"),
                       label: {
                            Text("Slider")
                       }
                )
            
        }
        .padding()
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
