//
//  VollmedTextStylesUI.swift
//  Pods
//
//  Created by Patric Pereira on 13/10/26.
//

import SwiftUI

struct VollmedTextStylesUI: View {
    
    var body: some View {
        VStack {
            Text("Tile L Regular")
                .vollmedTextStyle(.titleLRegular)
            
            Text("Tile L Bold")
                .vollmedTextStyle(.titleLBold)
            
            Text("Tile Md Regular")
                .vollmedTextStyle(.titleMdRegular)
            
            Text("Tile Md Bold")
                .vollmedTextStyle(.titleMdBold)
            
            Text("Tile S Regular")
                .vollmedTextStyle(.titleSRegular)
            
            Text("Tile S Bold")
                .vollmedTextStyle(.titleSBold)
            
            Text("Body Regular")
                .vollmedTextStyle(.bodyRegular)
            
            Text("Body Bold")
                .vollmedTextStyle(.bodyBold)
            
            Text("Caption")
                .vollmedTextStyle(.caption)
        }
    }
}

public enum VollmedTextStyle {
    case titleLRegular, titleLBold
    case titleMdRegular, titleMdBold
    case titleSRegular, titleSBold
    case bodyRegular, bodyBold
    case caption
    
    var size: CGFloat {
        switch self {
        case .titleLRegular, .titleLBold: return 22
        case .titleMdRegular, .titleMdBold: return 20
        case .titleSRegular, .titleSBold: return 18
        case .bodyRegular, .bodyBold: return 17
        case .caption: return 14
        }
    }
    
    var weight: Font.Weight {
        switch self {
        case .titleLBold, .titleMdBold, .titleSBold, .bodyBold: return .bold
        default: return .regular
        }
    }
    
    var color: Color {
        switch self {
        case .titleLBold, .titleMdBold, .titleSBold: return .vollmedPrimary
        default: return .gray
        }
    }
}

extension Color {
    static let vollmedPrimary = Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0)
}

struct VollmedTextStyleModifier: ViewModifier {
    let style: VollmedTextStyle
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: style.size, weight: style.weight))
            .foregroundStyle(style.color)
    }
}

extension View {
    public func vollmedTextStyle(_ style: VollmedTextStyle) -> some View {
        modifier(VollmedTextStyleModifier(style: style))
    }
}

#Preview {
    VollmedTextStylesUI()
}
