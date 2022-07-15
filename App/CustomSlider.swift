//
//  File.swift
//  App
//
//  Created by AmirDiafi on 6/27/22.
//

import SwiftUI

var theItems = ["Item one", "Item two", "Item three","Item four", "Item five", "Item six", "Item seven", "Item eight", "Item nine", "Item ten"]

struct FileView: View {
    var items: [String] = theItems
    @State var selectedItemIndex: Int = 0
    var windowWidth: CGFloat = UIScreen.main.bounds.width
    var segmentdWidth: CGFloat = UIScreen.main.bounds.width/3
    var body: some View {
        ZStack() {
            SwiftUI.ScrollView(.horizontal, showsIndicators: false) {
                VStack(alignment: .leading , spacing: 0) {
                    HStack(spacing: 0) {
                        ForEach(items, id: \.self, content: {item in
                            Button(action: {
                                withAnimation() {
                                    selectedItemIndex = items.firstIndex(of: item) ?? 0
                                }
                            }, label: {
                                Text(item)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(width: (segmentdWidth), height: 40)
                            })
                        })
                    }
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: segmentdWidth, height: 4)
                        .offset(x: CGFloat(selectedItemIndex) * (segmentdWidth))
                }
            }
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .topLeading)
        .background(Color.blue)
    }
}


struct FileView_Previews: PreviewProvider {
    static var previews: some View {
        FileView()
    }
}
