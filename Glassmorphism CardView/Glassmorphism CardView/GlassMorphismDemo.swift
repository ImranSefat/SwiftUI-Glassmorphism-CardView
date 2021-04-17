//
//  GlassMorphismDemo.swift
//  Glassmorphism CardView
//
//  Created by Imran Sefat on 17/4/21.
//

import SwiftUI
import SwiftUIX
struct GlassMorphismDemo: View {
    var body: some View {
        ZStack {
            Image("Livestream 4")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    Card1(title: "Computer Networks", subTitle: "CSE421",faculty: "Dr. Dev", image: Image("Illustration 8"))
                    Card1(title: "App Development", subTitle: "CSE491",faculty: "Imran Sefat")
                }
            }
            
        }
        
        
    }
}

struct GlassMorphismDemo_Previews: PreviewProvider {
    static var previews: some View {
        GlassMorphismDemo()
    }
}

struct Card1: View {
    var title : String = "Computer Algorithm"
    var subTitle : String = "CSE422"
    var faculty : String = "Imran Sefat"
    var image : Image = Image("Illustration 2")
    var body: some View {
        VisualEffectBlurView(blurStyle: .light, content: {
            VStack(alignment: .leading, spacing : 8) {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Text(subTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black.opacity(0.5))
                Text("Taught by \(faculty)")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black.opacity(0.3))
            }
            .padding()
            
        })
        .frame(width: 300, height: 320)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .padding()
    }
}
