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
                .titleLRegularStyle()
            
            Text("Tile L Bold")
                .titleLBoldStyle()
            
            Text("Tile Md Regular")
                .titleMdRegularStyle()
            
            Text("Tile Md Bold")
                .titleMdBoldStyle()
            
            Text("Tile S Regular")
                .titleSRegularStyle()
            
            Text("Tile S Bold")
                .titleSBoldStyle()
            
            Text("Body Regular")
                .bodyRegularStyle()
            
            Text("Body Bold")
                .bodyBoldStyle()
            
            Text("Caption")
                .captionStyle()
        }
    }
}

struct TitleStyleLRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 22))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct TitleStyleLBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 22))
            .foregroundStyle(Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1.0))
            .fontWeight(.bold)
    }
}

struct TitleStyleMdRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct TitleStyleMdBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundStyle(Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1.0))
            .fontWeight(.bold)
    }
}

struct TitleStyleSRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct TitleStyleSBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .foregroundStyle(Color(red: 0.0/255.0, green: 33.0/255.0, blue: 61.0/255.0, opacity: 1.0))
            .fontWeight(.bold)
    }
}

struct BodyRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct BodyBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .foregroundStyle(.gray)
            .fontWeight(.bold)
    }
}

struct Caption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

extension View {
    public func titleLRegularStyle() -> some View {
        modifier(TitleStyleLRegular())
    }
    
    public func titleLBoldStyle() -> some View {
        modifier(TitleStyleLBold())
    }
    
    public func titleMdRegularStyle() -> some View {
        modifier(TitleStyleMdRegular())
    }
    
    public func titleMdBoldStyle() -> some View {
        modifier(TitleStyleMdBold())
    }
    
    public func titleSRegularStyle() -> some View {
        modifier(TitleStyleSRegular())
    }
    
    public func titleSBoldStyle() -> some View {
        modifier(TitleStyleSBold())
    }
    
    public func bodyRegularStyle() -> some View {
        modifier(BodyRegular())
    }
    
    public func bodyBoldStyle() -> some View {
        modifier(BodyBold())
    }
    
    public func captionStyle() -> some View {
        modifier(Caption())
    }
}

#Preview {
    VollmedTextStylesUI()
}
