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
                            labelColor: .green,
                            title: "Face ID",
                            button: true,
                            showArrow: false
                        )
                        
                        SettingsList1View(
                            label: Image("iCloudSync"),
                            labelColor: .blue,
                            title: "iCloud Sync",
                            button: true,
                            showArrow: false
                        )
                    }
                    
                          
                    Section {
                        SettingsList1View(
                            label: Image("Premium"),
                            labelColor: .orange,
                            title: "Premium (Subscribed)",
                            button: false,
                            showArrow: false
                        )
                        
                    }
                    
                    Section {
                        SettingsList1View(
                            label: Image("FAQ"),
                            labelColor: .purple,
                            title: "FAQ",
                            button: false,
                            showArrow: true
                        )
                        
                        SettingsList1View(
                            label: Image("HowToEnable"),
                            labelColor: .green,
                            title: "How to Enable",
                            button: false,
                            showArrow: false
                        )
                        
                    }
                    
                    Section {
                        SettingsList1View(
                            label: Image("Rate1Blocker"),
                            labelColor: .red,
                            title: "Rate 1Blocker",
                            button: false,
                            showArrow: false
                        )
                        
                        SettingsList1View(
                            label: Image("FollowUs"),
                            labelColor: .blue,
                            title: "Follow Us",
                            button: false,
                            showArrow: false
                        )
                        
                        SettingsList1View(
                            label: Image("SendFeedback"),
                            labelColor: .blue,
                            title: "Send Feedback",
                            button: false,
                            showArrow: false
                        )
                        
                    }
                    
                    Section {
                        SettingsList1View(
                            label: Image("About"),
                            labelColor: .purple,
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
