//
//  AppAsyncImage.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 15/06/2026.
//

import SwiftUI

/// A reusable AsyncImage wrapper with a consistent placeholder and error state.
/// Usage:
///   AppAsyncImage(url: URL(string: "https://picsum.photos/300"))
///     .frame(width: 200, height: 200)
public struct AppAsyncImage: View {
    public let url: URL?
    private let contentMode: ContentMode

    /// Initialize the reusable image component.
    /// - Parameters:
    ///   - url: Optional URL of the image to load.
    ///   - contentMode: How the image should be resized within its space. Defaults to `.fit`.
    public init(url: URL?, contentMode: ContentMode = .fit) {
        self.url = url
        self.contentMode = contentMode
    }

    public var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            case .success(let image):
                switch contentMode {
                case .fit:
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                case .fill:
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .clipped()
                }
            case .failure:
                Image(systemName: "exclamationmark.triangle")
                    .font(.largeTitle)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        AppAsyncImage(url: URL(string: "https://picsum.photos/200"))
            .frame(width: 150, height: 150)
            .background(Color.gray.opacity(0.1))
        AppAsyncImage(url: URL(string: "https://invalid.example.com/image.jpg"))
            .frame(width: 150, height: 150)
            .background(Color.gray.opacity(0.1))
    }
    .padding()
}
