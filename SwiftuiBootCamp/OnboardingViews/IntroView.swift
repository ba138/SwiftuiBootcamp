//
//  IntroView.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 13/06/2026.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var userSignesIn : Bool = false
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color.purple,Color.purple.opacity(0.2)],
                           center: .topLeading, startRadius: 5, endRadius: 1000)
            .ignoresSafeArea()
            if userSignesIn{
AppProfileView()
            }else{
OnboardingView()
            }
        }
    }
}

#Preview {
    IntroView()
}
