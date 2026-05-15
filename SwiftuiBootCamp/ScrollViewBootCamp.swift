//
//  ScrollViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 15/05/2026.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    let colors: [Color] = [
        .red,
        .blue,
        .green,
        .yellow,
        .orange,
        .pink,
        .purple,
        .mint,
        .teal,
        .cyan,
        .indigo,
        .brown,
        .gray,
        .black,
        .white,
        
        Color(hex: "#FF6B6B"),
        Color(hex: "#4ECDC4"),
        Color(hex: "#45B7D1"),
        Color(hex: "#96CEB4"),
        Color(hex: "#FFEAA7"),
        Color(hex: "#DDA0DD"),
        Color(hex: "#98D8C8"),
        Color(hex: "#F7DC6F"),
        Color(hex: "#BB8FCE"),
        Color(hex: "#85C1E9"),
        Color(hex: "#F8C471"),
        Color(hex: "#82E0AA"),
        Color(hex: "#F1948A"),
        Color(hex: "#85929E"),
        Color(hex: "#D7BDE2"),
        Color(hex: "#A3E4D7"),
        Color(hex: "#F9E79F"),
        Color(hex: "#AED6F1"),
        Color(hex: "#F5B7B1"),
        Color(hex: "#ABEBC6"),
        Color(hex: "#FAD7A0"),
        Color(hex: "#D2B4DE"),
        Color(hex: "#A9CCE3"),
        Color(hex: "#F5CBA7"),
        Color(hex: "#A2D9CE"),
        Color(hex: "#FCF3CF"),
        Color(hex: "#EBDEF0"),
        Color(hex: "#D6EAF8"),
        Color(hex: "#FDEDEC"),
        Color(hex: "#E8F8F5"),
        Color(hex: "#FEF9E7"),
        Color(hex: "#F4ECF7"),
        Color(hex: "#EAF2F8"),
        Color(hex: "#FDF2E9"),
        Color(hex: "#E9F7EF")
    ]
    var body: some View {
     
//            ScrollView(.vertical,showsIndicators: false,content: {
//                VStack{
//                    ForEach(0..<50) { index in
//                        RoundedRectangle(cornerRadius: 25)
//                        .fill(colors[index])
//                        .frame(width: 300,height: 300)
//                    }
//                }
//            })
        ScrollView{
            VStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal,showsIndicators: false) {HStack{
                        ForEach(0..<30) { index in
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.white)
                                .frame(width: 200,height: 200)
                                .shadow(radius: 10).padding()
                        }

                       
                    }
                                                
                    }
                    
                }
            }
        }
            
        
    }
}

#Preview {
    ScrollViewBootCamp()
}
