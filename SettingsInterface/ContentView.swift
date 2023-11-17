//
//  ContentView.swift
//  SettingsInterface
//
//  Created by Sophie Haber on 15.11.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Text("Settings")
                    .font(Font.system(size: 40))
                    .bold()
                Spacer()
                    
            }
            .padding(.horizontal)
            
            Group{
                List{
                    
                    Section {
                        SettingsList1View(
                            label: Image("FaceID"),
                            title: "Face ID",
                            button: true,
                            showArrow: false
                        )
                        
                        SettingsList1View(
                            label: Image("iCloudSync"),
                            title: "iCloud Sync",
                            button: true,
                            showArrow: false
                        )
                    }
                    
                          
                    Section {
                        SettingsList1View(
                            label: Image("Premium"),
                            title: "Premium (Subscribed)",
                            button: false,
                            showArrow: false
                        )
                        
                    }
                    
                    Section {
                        SettingsList1View(
                            label: Image("FAQ"),
                            title: "FAQ",
                            button: false,
                            showArrow: true
                        )
                        
                        SettingsList1View(
                            label: Image("HowToEnable"),
                            title: "How to Enable",
                            button: false,
                            showArrow: false
                        )
                        
                    }
                    
                    Section {
                        SettingsList1View(
                            label: Image("Rate1Blocker"),
                            title: "Rate 1Blocker",
                            button: false,
                            showArrow: false
                        )
                        
                        SettingsList1View(
                            label: Image("FollowUs"),
                            title: "Follow Us",
                            button: false,
                            showArrow: false
                        )
                        
                        SettingsList1View(
                            label: Image("SendFeedback"),
                            title: "Send Feedback",
                            button: false,
                            showArrow: false
                        )
                        
                    }
                    
                    Section {
                        SettingsList1View(
                            label: Image("About"),
                            title: "About",
                            button: false,
                            showArrow: true
                        )
                    }
                    
                }
            }
            .listStyle(.grouped)
        }
    }
}

#Preview {

//Tab bar
    
    TabView (selection: Binding.constant(5)) {
        
        Text("Overview")
            .tabItem {
                Image(systemName: "rectangle.fill.on.rectangle.fill")
                Text("Overview")
            }
            .tag(1)
        
        Text("Safari")
            .tabItem {
                Image(systemName: "safari.fill")
                Text("Safari")
            }
            .tag(2)
        
        Text("Firewall")
            .tabItem {
                Image(systemName: "firewall.fill")
                Text("Firewall")
            }
            .tag(3)
        
        Text("News")
            .tabItem {
                Image(systemName: "newspaper.fill")
                Text("News")
            }
            .tag(4)
        
        ContentView()
            .tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
            .tag(5)
    }
    
    .accentColor(.blue)
    
    .preferredColorScheme(.dark)
}
