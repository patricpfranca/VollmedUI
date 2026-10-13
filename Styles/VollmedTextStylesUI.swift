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

struct BodyStyleRegular: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .foregroundStyle(.gray)
            .fontWeight(.regular)
    }
}

struct BodyStyleBold: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .foregroundStyle(.gray)
            .fontWeight(.bold)
    }
}

struct CaptionStyle: ViewModifier {
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
        modifier(BodyStyleRegular())
    }
    
    public func bodyBoldStyle() -> some View {
        modifier(BodyStyleBold())
    }
    
    public func captionStyle() -> some View {
        modifier(CaptionStyle())
    }
}

#Preview {
    VollmedTextStylesUI()
}
