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
            
            Group{
                List{
                    
                    SettingsList1View(
                        label: Image(systemName: "faceid"),
                        labelColor: .green,
                        title: "Face ID"
                    )
                    
                    SettingsList1View(
                        label: Image(systemName: "arrow.triangle.2.circlepath.icloud.fill"),
                        labelColor: .blue,
                        title: "iCloud Sync"
                    )
                    
                    Spacer()
                    
                    SettingsList1View(
                        label: Image(systemName: "crown.fill"),
                        labelColor: .orange,
                        title: "Premium (Subscribed)"
                    )
                }
            }
            .listStyle(.plain)
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
