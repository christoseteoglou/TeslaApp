//
//  CarLockButtonView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-25.
//

import SwiftUI

struct CarLockButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            Label("Unlock Car", systemImage: "lock.fill")
                .font(.system(size: 14, weight: .medium, design: .default))
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.white.opacity(0.05))
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                .overlay (
                    RoundedRectangle(cornerRadius: 14, style: .continuous)
                        .stroke(Color.white.opacity(0.1), lineWidth: 0.1)
                )
        })
    }
}

#Preview {
    CarLockButtonView()
}
