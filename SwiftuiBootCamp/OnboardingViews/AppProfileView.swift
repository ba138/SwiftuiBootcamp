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
        }
    }
}

#Preview {
    AppProfileView()
}
