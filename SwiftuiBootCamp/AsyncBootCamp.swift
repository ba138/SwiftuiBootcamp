//
//  AsyncBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 15/06/2026.
//

import SwiftUI

struct AsyncBootCamp: View {
    // Use URL(string:) to create an optional URL from a string literal.
    // Provide a valid example URL so the view compiles and runs.
     let url = URL(string: "https://picsum.photos/1024")

    var body: some View {
        AppAsyncImage(url: url, contentMode: .fit)
            .padding()
    }
}

#Preview {
    AsyncBootCamp()
}
