//
//  ReorderButtonView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-25.
//

import SwiftUI

struct ReorderButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Reorder Groups")
                .font(.caption)
                .padding(.vertical, 8)
                .padding(.horizontal, 14)
                .background(Color.white.opacity(0.05))
                .clipShape(Capsule())
        })
    }
}

#Preview {
    ReorderButtonView()
}
