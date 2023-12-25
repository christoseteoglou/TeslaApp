//
//  VoiceCommandButtonView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-24.
//

import SwiftUI

struct VoiceCommandButtonView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Image(systemName: "mic.fill")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                    .frame(width: 64, height: 64)
                    .background(Color("ImportantGreen"))
                    .foregroundStyle(Color("BGDarkGray"))
                    .clipShape(Circle())
                    .padding()
                    .shadow(radius: 10)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    VoiceCommandButtonView()
}
