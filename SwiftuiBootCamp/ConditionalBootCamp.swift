//
//  ConditionalBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 22/05/2026.
//

import SwiftUI

struct ConditionalBootCamp: View {
    @State var isShow: Bool = false;
    @State var shoeRectangle : Bool = false;
    var body: some View {
        VStack(spacing:20){
            Button {
                isShow.toggle()
            } label: {
                Text("Pressed : \(isShow.description)")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(6)
            }
            Button {
                shoeRectangle.toggle()
            } label: {
                Text("Rectangle : \(shoeRectangle.description)")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(6)
            }

            if isShow{
                Circle(
                    
                )
                .fill(.brown)
                .padding(.all,40)

            }
            if shoeRectangle{
                Rectangle()
                    .fill(.gray)
                    .frame(width: 200,height: 200)
                    .padding(.all,40)
            }
            if isShow && shoeRectangle{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200,height: 300)
            }
            Spacer()
            
        }
    }
}

#Preview {
    ConditionalBootCamp()
}
