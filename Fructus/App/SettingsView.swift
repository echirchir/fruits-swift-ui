//
//  SettingsView.swift
//  Fructus
//
//  Created by Elisha Chirchir on 29/05/2023.
//

import SwiftUI

struct SettingsView: View {
    
    // properties
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // section 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestoral. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more."
                            )
                            .font(.footnote)
                        }
                    }
                    
                    // section 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                            Divider().padding(.vertical, 4)
                            
                            Text("If you wish, you can restart the application by toggling the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding) {
                                if isOnboarding {
                                    Text("Restarted".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.green)
                                } else {
                                    Text("Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.secondary)
                                }
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,
                                                            style: .continuous))
                            )
                        }
                    
                    // section 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Elisha / Rapha")
                        SettingsRowView(name: "Designer", content: "Dacy Ladic")
                        SettingsRowView(name: "Compatibility", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@CodingRaconteur", linkDestination: "twitter.com/elai")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                } // vstack
                .navigationBarTitle(
                    Text("Settings"),
                    displayMode: .large
                )
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            } // scroll ended
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
