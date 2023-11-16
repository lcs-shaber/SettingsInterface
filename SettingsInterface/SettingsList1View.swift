//
//  SettingsList1View.swift
//  SettingsInterface
//
//  Created by Sophie Haber on 15.11.23.
//

import SwiftUI

struct SettingsList1View: View {
    
    let label: Image
    let labelColor: Color
    let title: String
//    let button: toggle
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(.darkGray)
                .frame(height: 50)
                
            HStack{
                Text(label)
                    .foregroundColor(labelColor)
                Text(title)
                    .foregroundColor(.white)
                Spacer()
                
            }
            .padding()
        }
        .padding(.horizontal)
    }
}

#Preview {
    SettingsList1View(
        label: Image(systemName: "faceid"),
        labelColor: .green,
        title: "Face ID"
    )
}
