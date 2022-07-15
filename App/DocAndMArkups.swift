//
//  DocAndMArkups.swift
//  App
//
//  Created by AmirDiafi on 6/28/22.
//

import SwiftUI

struct DocAndMArkups: View {
    @State var counter: Int = 0
    
    //MARK: Body
    var body: some View {
        VStack {
            //Start showing the counter value
            Text("You clicked: \(counter) times")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.bottom)
            //End the counter value
            
            // Start button view
            MianButton
            // End button view
        }
    }
    
    /// This is a custom button to fire the function that will gets the
    /// data from the web server and the button label will change to
    /// activity indecato and will be disabled and the color will change
    /// as well if the data loading..
    private var MianButton: some View {
        //MARK: Button
        /*
         //What to do with this button:
         1- Custom it
         2- Make it bouncable
         3- When the user click on it fetch the data
            and if the data loading disable the button
            and change its color to gray and change the
            text to activity indecator (progressive loader)
         4- end.
        */
        Button(action: {
            counter = increaseCounter(value: counter)
        }) {
            Text("Click me")
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}

/// Increase the counter value by one
///
/// This function take the passed integer counter and increase it by on the return it, and this is to update the state insteade of using the Binding method to increase the counter in this function.
///
/// ```
/// @State var counter: Int = 0
/// Button(action: {
///     counter = increaseCounter(value: counter)
/// }) {
///     Text("Click me")
/// }
///```
/// - Warning: The counter is requored
/// - Parameter value: the counter value to increase
/// - Returns: This function will return you the increased value after passed it
private func increaseCounter(value: Int) -> Int {
    let newValue: Int = value + 1
    return newValue
}

struct DocAndMArkups_Previews: PreviewProvider {
    static var previews: some View {
        DocAndMArkups()
    }
}
