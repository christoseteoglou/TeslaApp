//
//  ContentView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    HomeHeaderView()
                    CustomDivider()
                    CarSectionView()
                    CustomDivider()
                    Button(action: {}) {
                        CategoryView(title: "Quick Shortcuts", showEdit: true, actionItems: quickShortcuts)
                    }
                    CustomDivider()
                    Button(action: {}) {
                        CategoryView(title: "Recent Actions", actionItems: recentActions)
                    }
                    CustomDivider()
                    
                    AllSettingsView()
                }
                .padding()
            }
            
            VoiceCommandButtonView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("DarkGray"))
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 0.25)
            .background(.white)
            .opacity(0.1)
    }
}
