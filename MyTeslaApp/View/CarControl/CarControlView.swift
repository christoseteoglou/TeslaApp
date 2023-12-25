//
//  CarControlView.swift
//  MyTeslaApp
//
//  Created by Christos Eteoglou on 2023-12-25.
//

import SwiftUI

struct CarControlView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var valetModeIsOn = false
    
    let carControls: [ActionItem] = [
        ActionItem(icon: "flashlight.on.fill", text: "Flash"),
        ActionItem(icon: "speaker.wave.3.fill", text: "Honk"),
        ActionItem(icon: "key.fill", text: "Start"),
        ActionItem(icon: "arrow.up.bin", text: "Front Trunk"),
        ActionItem(icon: "arrow.up.square", text: "Trunk")
        
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack(alignment: .leading) {
                    HStack {
                        Button(action: {
                            dismiss()
                        }, label: {
                            GeneralButtonView(icon: "chevron.left")
                        })
                        Spacer()
                    }
                    Text("Car Controls")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                
                CustomDivider()
                
                CarLockButtonView()
                
                CustomDivider()
                
                VStack(spacing: 20) {
                    HStack {
                        Spacer()
                        ActionButton(item: carControls[0])
                        Spacer()
                        ActionButton(item: carControls[1])
                        Spacer()
                        ActionButton(item: carControls[2])
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        ActionButton(item: carControls[3])
                        Spacer()
                        ActionButton(item: carControls[4])
                        Spacer()
                    }
                }
                .padding()
                
                CustomDivider()
                
                HStack {
                    Text("Valet Mode")
                        .fontWeight(.medium)
                    Spacer()
                    Toggle("", isOn: $valetModeIsOn)
                }
                
                if valetModeIsOn {
                    Text("Valet Mode is On")
                        .font(.caption)
                        .foregroundStyle(Color("WarningRed"))
                }
                
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("BGDarkGray"))
        .foregroundStyle(.white)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CarControlView()
}
