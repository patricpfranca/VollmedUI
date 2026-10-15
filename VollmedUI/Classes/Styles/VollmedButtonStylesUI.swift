//
//  VollmedButtonStylesUI.swift
//  Pods
//
//  Created by Patric Pereira on 13/10/26.
//

import SwiftUI

struct VollmedButtonStylesUI: View {
    var body: some View {
        VStack {
            Text("Button Styles")
            
            Button {
                //
            } label: {
                Text("Confirm")
            }.buttonStyle(ConfirmPrimaryButtonStyle())
            
            Button {
                //
            } label: {
                Text("Cancel")
            }.buttonStyle(CancelButtonStyle())
        }
    }
}

public struct ConfirmPrimaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1.0))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.top, 8)
    }
}

public struct CancelButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(Color(red: 127.0/255.0, green: 41.0/255.0, blue: 44.0/255.0, opacity: 1.0))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.top, 8)
    }
}

#Preview {
    VollmedButtonStylesUI()
}
