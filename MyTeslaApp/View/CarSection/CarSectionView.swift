//
//  CarSectionView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-24.
//

import SwiftUI

struct CarSectionView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                HStack(alignment: .center) {
                    Image(systemName: "battery.75")
                    Text("237 miles".uppercased())
                }
                .foregroundStyle(Color("ImportantGreen"))
                .font(.system(size: 14,weight: .semibold, design: .rounded))
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Parked")
                        .fontWeight(.semibold)
                    Text("Last Updated: 5min ago")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
            }
            
            Image("Car")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    CarSectionView()
}
