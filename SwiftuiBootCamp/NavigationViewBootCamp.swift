//
//  NavigationViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 26/05/2026.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Sheet") {
                    MySecondView()
                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Title")
//            .navigationBarTitleDisplayMode(.inline)
            
            .font(.largeTitle)

            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                                trailing: Image(systemName: "gear"))


        }
    }
}
struct MySecondView : View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            VStack{
                Button {
                    dismiss()
                } label: {
                    Text("BackButton")
                }

            }
                
        }
    }
}
#Preview {
    NavigationViewBootCamp()
}
