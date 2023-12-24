//
//  AllSettingsView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-24.
//

import SwiftUI

struct AllSettingsView: View {
    
    var body: some View {
        CategoryHeader(title: "All Settings")
        
        LazyVGrid(columns: [GridItem(.fixed(170)),GridItem(.fixed(170))], content: {
            SettingsBlock(icon: "car.fill", title: "Controls")
            SettingsBlock(icon: "fanblades.fill", title: "Climate", subtitle: "Interior 68° F", backgroundColor: Color("Blue"))
            SettingsBlock(icon: "location.fill", title: "Location", subtitle: "empire state building")
            SettingsBlock(icon: "checkerboard.shield", title: "Security", subtitle: "0 events detected")
            SettingsBlock(icon: "sparkles", title: "Upgrades", subtitle: "3 upgrades available")
        })
    }
}

#Preview {
    AllSettingsView()
}

struct SettingsBlock: View {
    var icon: String
    var title: String
    var subtitle = ""
    
    var backgroundColor: Color = Color.white.opacity(0.05)
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.semibold)
                    .fixedSize(horizontal: true, vertical: true)
                
                if !subtitle.isEmpty {
                    Text(subtitle.uppercased())
                        .font(.system(size: 10, weight: .medium, design: .default))
                        .lineLimit(1)
                }
            }
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white.opacity(0.1), lineWidth: 0.5))
    }
}
