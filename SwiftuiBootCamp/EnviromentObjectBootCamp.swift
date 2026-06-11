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

#Preview {
    EnviromentObjectBootCamp()
}
