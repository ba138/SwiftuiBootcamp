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
        // Pass the optional URL directly; remove the invalid optional chaining syntax.
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
            case .failure:
                Image(systemName: "exclamationmark.triangle")
                    .font(.largeTitle)
                    .foregroundStyle(.secondary)
            @unknown default:
                EmptyView()
            }
        }
        .padding()
    }
}

#Preview {
    AsyncBootCamp()
}
