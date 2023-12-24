//
//  CategoryView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-24.
//

import SwiftUI

struct CategoryView: View {
    var title: String
    var showEdit: Bool = false
    var actionItems: [ActionItem]
    
    var body: some View {
        VStack {
            CategoryHeader(title: title, showEdit: showEdit)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(actionItems, id: \.self) { item in
                        ActionButton(item: item)
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryView(title: "title", actionItems: quickShortcuts)
}

struct ActionButton: View {
    var item: ActionItem
    
    var body: some View {
        VStack(alignment: .center) {
            GeneralButtonView(icon: item.icon)
            Text(item.text)
                .frame(width: 72)
                .font(.system(size: 12, weight: .semibold, design: .default))
                .multilineTextAlignment(.center)
        }
    }
}


struct ActionItem: Hashable {
    var icon: String
    var text: String
    
}

let quickShortcuts: [ActionItem] = [
    ActionItem(icon: "bolt.fill", text: "Charging"),
    ActionItem(icon: "fanblades.fill", text: "Fan On"),
    ActionItem(icon: "play.fill", text: "Media Controls"),
    ActionItem(icon: "bolt.car", text: "Close Charge Port"),
]

let recentActions: [ActionItem] = [
    ActionItem(icon: "arrow.up.square", text: "Open Trunk"),
    ActionItem(icon: "fanblades", text: "Fan Off"),
    ActionItem(icon: "person.fill.viewfinder", text: "Summon"),
]
