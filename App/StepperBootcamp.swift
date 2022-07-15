//
//  StepperBootcamp.swift
//  App
//
//  Created by AmirDiafi on 6/28/22.
//

import SwiftUI

struct StepperBootcamp: View {
    var colors: [Color] = [.red, .orange, .green, .blue, .purple, .yellow]
    @State var currentColorIndex: Int = 0
    @State var isEnded: Bool = false
    @State var boxSize: CGFloat = 100
    
    
        
    func incrementStep() {
        if currentColorIndex < colors.count - 1 {
            withAnimation() {
                currentColorIndex += 1
                isEnded = false
            }
        } else {
            isEnded = true
        }
    }
    
    func decrementStep() {
        if currentColorIndex > 0 {
            withAnimation() {
                currentColorIndex -= 1
                isEnded = false
            }
        } else {
            isEnded = true
        }
    }
    
    func incrementSize() {
        withAnimation() {
            boxSize += 50
        }
    }
    
    func decrementSize() {
        withAnimation() {
            boxSize -= 50
        }
    }
    
    var body: some View {
        
        VStack {
                Text("isEnded: \(isEnded.description)")
            
                Stepper(
                    "color selected: \(colors[currentColorIndex].description)",
                    onIncrement: incrementStep,
                    onDecrement: decrementStep
                )
            
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(colors[currentColorIndex])
                    .frame(width: boxSize, height: boxSize)
                Stepper("Change box size",
                    onIncrement: incrementSize,
                    onDecrement: decrementSize
                )
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
