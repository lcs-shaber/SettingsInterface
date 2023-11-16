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
    let showArrow: Bool
    
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
                
                if showArrow == true {
                    Image(systemName: "chevron.right")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
    }
}

#Preview {
    SettingsList1View(
        label: Image(systemName: "faceid"),
        labelColor: .green,
        title: "Face ID",
        showArrow: true
    )
}

#Preview {
    SettingsList1View(
        label: Image(systemName: "faceid"),
        labelColor: .green,
        title: "Face ID",
        showArrow: false
    )
}
