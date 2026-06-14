//
//  AppProfileView.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 14/06/2026.
//

import SwiftUI

struct AppProfileView: View {
    // for AppStorage
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("Gender") var currentUserGender : String?
    @AppStorage("signed_in") var userSignesIn : Bool = false
    var body: some View {
        VStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150,height: 150)
            Text(currentUserName ?? "unknown")
            Text("This user is \(currentUserAge ?? 0) years old")
            Text("this user \(currentUserGender ?? "Unkown")")
            Text("sign out".uppercased())
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .padding()
        .padding(.vertical,40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
    func signOut (){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        userSignesIn = false
    }
}

#Preview {
    AppProfileView()
}
