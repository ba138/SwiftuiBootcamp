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
        VStack{
            ForEach(viewModel.dataArray, id: \.self) { items in
                Text(items)
            }
        }
    }
}

#Preview {
    EnviromentObjectBootCamp()
}
