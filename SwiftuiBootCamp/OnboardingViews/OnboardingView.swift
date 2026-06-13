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
            ZStack{
                switch userOnboardingCount {
                case 0 :
                    welcomeSection
                default :
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.white)
                }
            }
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
    private var welcomeSection : some View {
        VStack (spacing: 20){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200,height: 200 )
                .foregroundColor(.white)
            Text("Find Your Match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("This is the number one app for the dating in the world and we are learning the swiftui app storage and i like to learn new thinks")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()

        }
        .multilineTextAlignment(.center)
        .padding(20)
    }
}
