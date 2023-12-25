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
            NavigationLink(destination: CarControlView()) {
                SettingsBlock(icon: "car.fill", title: "Controls", subtitle: "Car Locked")
            }
            SettingsBlock(icon: "fanblades.fill", title: "Climate", subtitle: "Interior 68° F", backgroundColor: Color("HighlightBlue"))
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
    var subtitle: String
    
    var backgroundColor: Color = Color.white.opacity(0.05)
    
    var body: some View {
        HStack(alignment: .center, spacing: 1) {
            Image(systemName: icon)
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .fontWeight(.semibold)
                    .fixedSize(horizontal: true, vertical: true)
                    .font(.system(size: 14, weight: .medium, design: .default))
                
                Text(subtitle.uppercased())
                    .font(.system(size: 8, weight: .medium, design: .default))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(1)
            }
            .padding(.leading, 5)
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white.opacity(0.1), lineWidth: 0.5))
    }
}
