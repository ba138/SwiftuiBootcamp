//
//  OnboardingView.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 13/06/2026.
//

import SwiftUI

struct OnboardingView: View {
    @State var userOnboardingCount : Int = 0
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                bottomButton
                
            }
            .padding(30)
        }
    }
   
}

#Preview {
    OnboardingView()
        .background(.purple)
}
extension OnboardingView {
    private var bottomButton : some View {
        Text("SignIn")
            .font(.headline)
            .frame( height: 55,)
            .frame(maxWidth: .infinity)
            .foregroundColor(.purple)
            .background(.white)
            .cornerRadius(20)
            .onTapGesture {
                
            }
    }
}
