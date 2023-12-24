//
//  CategoryView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-24.
//

import SwiftUI

struct CategoryHeader: View {
    var title: String
    var showEdit: Bool = false
    
    var body: some View {
        HStack(alignment: .center) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
            Spacer()
            Button(action: {}) {
                if showEdit {
                    Text("Edit")
                        .foregroundStyle(.gray)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

#Preview {
    CategoryHeader(title: "title")
}

