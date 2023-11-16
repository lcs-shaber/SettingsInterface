//
//  settingsList2View.swift
//  SettingsInterface
//
//  Created by Sophie Haber on 15.11.23.
//

import SwiftUI

struct settingsList2View: View {
    
    let label: Image
    let labelColor: Color
    let title: String
    
    var body: some View {
        HStack{
            Text(label)
                .foregroundColor(labelColor)
            Text(title)
                .foregroundColor(.gray)
            Spacer()
            
        }
    }
}

#Preview {
    settingsList2View(
        label: Image(systemName: "faceid"),
        labelColor: .green,
        title: "Face ID"
    )
}

