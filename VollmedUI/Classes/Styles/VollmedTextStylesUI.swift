//
//  VollmedTextStylesUI.swift
//  Pods
//
//  Created by Patric Pereira on 13/10/26.
//

import SwiftUI

struct VollmedTextStylesUI: View {
    
    let boldColor = Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1.0)
    
    var body: some View {
        VStack {
            Text("Tile L Regular")
                .font(.system(size: 22))
                .foregroundStyle(.gray)
                .fontWeight(.regular)
            
            Text("Tile L Bold")
                .font(.system(size: 22))
                .foregroundStyle(boldColor)
                .fontWeight(.bold)
            
            Text("Tile Md Regular")
                .font(.system(size: 20))
                .foregroundStyle(.gray)
                .fontWeight(.regular)
            
            Text("Tile Md Bold")
                .font(.system(size: 20))
                .foregroundStyle(boldColor)
                .fontWeight(.bold)
            
            Text("Tile S Regular")
                .font(.system(size: 18))
                .foregroundStyle(.gray)
                .fontWeight(.regular)
            
            Text("Tile S Bold")
                .font(.system(size: 18))
                .foregroundStyle(boldColor)
                .fontWeight(.bold)
            
            Text("Body Regular")
                .font(.system(size: 17))
                .foregroundStyle(.gray)
                .fontWeight(.regular)
            
            Text("Body Bold")
                .font(.system(size: 17))
                .foregroundStyle(.gray)
                .fontWeight(.bold)
            
            Text("Caption")
                .font(.system(size: 14))
                .foregroundStyle(.gray)
                .fontWeight(.regular)
        }
    }
}

#Preview {
    VollmedTextStylesUI()
}
