//
//  Alerts.swift
//  App
//
//  Created by AmirDiafi on 6/27/22.
//

import SwiftUI

struct Alerts: View {
    @State var isPresent: Bool = false
    @State var isSheetPresented: Bool = false
    @State var itemSize: CGFloat = UIScreen.main.bounds.width
    @State var postIndentity: PostIdentity = .anotherOnePost
    
    var peopleData: [PersonType] = getPeopleData()
    var body: some View {
        VStack {
            Button(action: {
                isPresent.toggle()
            }) {
                Text("Open Alert")
                    .foregroundColor(.white)
            }
            .padding()
            .background(Color.red)
            .alert(
                isPresented: $isPresent,
                content: {
                    alertContent(
                        title: "Alert",
                        message: "This is Message in Alert"
                    )
                }
            )
            
            SwiftUI.ScrollView {
                ForEach(peopleData, id: \.self, content: {person in
                    LazyVStack(alignment: .leading) {
                        HStack {
                            HStack {
                                Image(person.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                Text(person.name)
                            }
                            SwiftUI.Spacer()
                            Button(action: {
                                postIndentity =
                                    person.name == "Amir One" ?
                                    .myPost : .anotherOnePost
                                isSheetPresented.toggle()
                            }) {
                                Image(systemName: "ellipsis")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .accentColor(.gray)
                            }
                            .actionSheet(
                                isPresented: $isSheetPresented,
                                content: {
                                    actionSheetContent(
                                        title: "Actions",
                                        message: "Actions on this item",
                                        postIdentity: postIndentity,
                                        setPresent: {
                                            isPresent.toggle()
                                        }
                                    )
                                }
                            )
                        }
                        .padding(10)
                        Image(person.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: itemSize, height: itemSize)
                    }
                })
            }
        }
    }
}

func actionSheetContent(
    title: String, message: String?,
    postIdentity: PostIdentity,
    setPresent: @escaping () -> Void) -> ActionSheet {
    
    let closeButton: ActionSheet.Button = .cancel(Text("Close"), action: {})
    var destructiveButton: ActionSheet.Button
    
    switch postIdentity {
    case .myPost:
         destructiveButton = .destructive(Text("Delete"), action: setPresent)
        break
    case .anotherOnePost:
        destructiveButton = .default(Text("Report"), action: {})
        break
    }
    
    return ActionSheet(
        title: Text(title),
        message: Text(message ?? ""),
        buttons: [closeButton, destructiveButton]
    )
}

private func alertContent(title: String, message: String?) -> Alert {
    return Alert(
        title: Text(title),
        message: Text(message ?? ""),
        primaryButton: .cancel(Text("Close"), action: {}),
        secondaryButton: .destructive(Text("Nah"), action: {})
    )
}

enum PostIdentity {
    case myPost
    case anotherOnePost
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
