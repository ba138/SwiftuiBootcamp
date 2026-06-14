//
//  OnboardingView.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 13/06/2026.
//

import SwiftUI

struct OnboardingView: View {
    @State var userOnboardingCount : Int = 0
    @State var nameText : String = ""
    @State var age : Double = 50
    @State var gender : String = "Male"
    var body: some View {
        ZStack{
            ZStack{
                switch userOnboardingCount {
                case 0 :
                    welcomeSection
                case 1 :
                    nameSection
                case 2 :
                    ageSection
                case 3 :
                    genderSection
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
        Text(userOnboardingCount == 0 ? "SIGN UP" :
                userOnboardingCount == 3 ? "Finished" :
                "Next"
        )
            .font(.headline)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .foregroundColor(.purple)
            .background(.white)
            .cornerRadius(20)
            .onTapGesture {
                handleNextPress()
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
    private var nameSection : some View {
        VStack (spacing: 20){
            Spacer()
            Text("Your Name Here")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Enter you Name", text: $nameText)
                .font(.default)
                .frame(height: 55)
                .padding(.horizontal)
                .background()
                .cornerRadius(12)
            
            
            Spacer()
            Spacer()

        }
        .padding(20)
    }
    private var ageSection : some View {
        VStack (spacing: 20){
            Spacer()
            Text("Select Your Age")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()

        }
        .padding(20)
    }
    private var genderSection : some View {
        VStack (spacing: 20){
            Spacer()
            Text("Select Your Gender")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(
                selection: $gender,
                label: Text("Select Your Gender")
                
            ) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-binary").tag("Non-binary")
            }
            .accentColor(.white)

            .pickerStyle(.menu)

            Spacer()
            Spacer()

        }
        .padding(20)
    }
}
// MARK : FUNCTIONS
extension OnboardingView {
    func handleNextPress()
    {
        if userOnboardingCount == 3{
            // Sign In Logic
        }else{
            userOnboardingCount += 1

        }
    }
}
