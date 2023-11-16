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
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
