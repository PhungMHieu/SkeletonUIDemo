//
//  AvatarSkeletonExample.swift
//  SkletonUITest
//
//  Created by Admin on 9/9/25.
//

import SwiftUI

import SwiftUI
import SkeletonUI

//struct AvatarSkeletonExample: View {
//    private let url = URL(string: "https://picsum.photos/200")!
//    @State private var uiImage: UIImage? = nil
//    @State private var isLoading = true
//
//    var body: some View {
//        VStack(spacing: 16) {
//            // Ảnh avatar (skeleton hình tròn)
//            Image(uiImage: uiImage)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 88, height: 88)
//                .clipShape(Circle())
//                .skeleton(
//                    with: isLoading,
//                    size: CGSize(width: 88, height: 88),
//                    animation: .linear(),                // hoặc .pulse()
//                    appearance: .gradient(.linear),      // hoặc .solid()
//                    shape: .circle                        // hình tròn
//                )
//
//            // Tiêu đề + mô tả (skeleton dạng dòng text bo tròn)
//            VStack(alignment: .leading, spacing: 8) {
//                Text(isLoading ? nil : "Jane Doe")
//                    .font(.headline)
//                    .skeleton(
//                        with: isLoading,
//                        appearance: .gradient(),
//                        shape: .rounded(.radius(6)),
//                        lines: 1
//                    )
//
//                Text(isLoading ? nil : "iOS Developer at Skeleton, loves SwiftUI")
//                    .font(.subheadline)
//                    .foregroundColor(.secondary)
//                    .skeleton(
//                        with: isLoading,
//                        appearance: .gradient(),
//                        shape: .rounded(.radius(6)),
//                        lines: 2,
//                        scales: [1: 0.9, 2: 0.7],          // độ dài từng dòng
//                        spacing: 6,
//                    )
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.horizontal)
//
//            // Thumbnail (skeleton bo góc)
//            Image(uiImage: uiImage)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 240, height: 140)
//                .clipped()
//                .cornerRadius(14)
//                .skeleton(
//                    with: isLoading,
//                    size: CGSize(width: 240, height: 140),
//                    animation: .pulse(),
//                    appearance: .gradient(.linear, radius: 1, angle: .degrees(0)),
//                    shape: .rounded(.radius(14))
//                )
//        }
//        .task {
//            await loadImage()
//        }
//        .padding()
//    }
//
//    @MainActor
//    private func loadImage() async {
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//            self.uiImage = UIImage(data: data)
//        } catch {
//            // có thể đặt ảnh fallback tại đây
//            self.uiImage = nil
//        }
//        self.isLoading = false
//    }
//}
//
//#Preview {
//    AvatarSkeletonExample()
//}
