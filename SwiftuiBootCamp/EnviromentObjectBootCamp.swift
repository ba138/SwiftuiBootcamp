//
//  EnviromentObjectBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 11/06/2026.
//

import SwiftUI

struct EnviromentObjectBootCamp: View {
    @StateObject var viewModel : EnvorimentViewModel = EnvorimentViewModel()
    var body: some View {
        NavigationView{
            List {
                ForEach(viewModel.dataArray, id: \.self) { items in
                    NavigationLink(destination: DetailView(item: items)) {
                        Text(items)
                            .font(.headline)
                            .bold()
                            .foregroundColor(.black)

                    }
                }
            }
        }
    }
}
struct DetailView : View {
    let  item : String
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea()
            Text(item)
                .font(.headline)
                .padding()
                .padding(.horizontal,10)
                .background(.white)
                .foregroundColor(.purple)
               
                .cornerRadius(10)
        }
    }
}
struct FinalView : View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [
                Color.blue,
                Color.blue.opacity(0.5)
            ], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            ScrollView {
                VStack(spacing : 20
                ){
                    Text("Item 1")
                    Text("Item 2")
                    Text("Item 3")
                }.foregroundColor(.white)
                    .font(.headline)
            }
        }
    }
}
#Preview {
//    EnviromentObjectBootCamp()
    FinalView()
}
