//
//  HomeHeaderView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-24.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Model 3".uppercased())
                    .font(.caption2)
                    .fontWeight(.medium)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .foregroundStyle(.white)
                    .background(Color("WarningRed"))
                    .clipShape(Capsule())
                
                Text("Mach Five")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            Spacer()
            HStack {
                GeneralButtonView(icon: "lock.fill")
                GeneralButtonView(icon: "gear")
            }
        }
        .padding(.top)
    }
}

#Preview {
    HomeHeaderView()
}
