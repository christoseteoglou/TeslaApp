//
//  GeneralButtonView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-24.
//

import SwiftUI

struct GeneralButtonView: View {
    var icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .imageScale(.large)
                .frame(width: 44, height: 44)
                .background(.white.opacity(0.05))
                .clipShape(Circle())
                .overlay (
                    Circle()
                        .stroke(.white.opacity(0.1), lineWidth: 0.5)
                )
        }
    }
}

#Preview {
    GeneralButtonView(icon: "lock.fill")
}
