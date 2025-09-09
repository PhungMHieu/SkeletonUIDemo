//
//  CardSkeletonView.swift
//  SkletonUITest
//
//  Created by Admin on 9/9/25.
//

import SwiftUI
import SkeletonUI

struct CardSkeletonWithData: View {
    @State private var isLoading = true
    
    // Dữ liệu thật (mock demo)
    let avatar = "person.fill"
    let title = "SkeletonUI Card"
    let subtitle = "Có skeleton và dữ liệu thật"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
            
            HStack(alignment: .top, spacing: 20) {
                // Avatar
                ZStack {
                    if isLoading {
                        Rectangle()
                            .foregroundStyle(.clear)
                            .frame(width: 72, height: 72)
                            .skeleton(
                                with: true,
                                size: CGSize(width: 72, height: 72),
                                animation: .linear(),
                                appearance: .gradient(.linear),
                                shape: .rounded(.radius(16))
                            )
                        
                        XLogo()
                            .frame(width: 36, height: 36)
                            .opacity(0.18)
                    } else {
                        Image(systemName: avatar)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 72, height: 72)
                            .padding(12)
                            .background(Color.blue.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    }
                }
                
                VStack(alignment: .leading, spacing: 14) {
                    if isLoading {
                        RoundedRectangle(cornerRadius: 18, style: .continuous)
                            .foregroundStyle(.clear)
                            .frame(width: 240, height: 32)
                            .skeleton(with: true, shape: .capsule)
                        
                        RoundedRectangle(cornerRadius: 14, style: .continuous)
                            .foregroundStyle(.clear)
                            .frame(width: 180, height: 24)
                            .skeleton(with: true, shape: .capsule)
                    } else {
                        Text(title)
                            .font(.headline)
                        Text(subtitle)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 20)
        }
        .padding()
        .onAppear {
            // giả lập load dữ liệu sau 2 giây
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isLoading = false
            }
        }
    }
}

struct XLogo: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 3, style: .continuous)
                .frame(width: 42, height: 8)
                .rotationEffect(.degrees(45))
            RoundedRectangle(cornerRadius: 3, style: .continuous)
                .frame(width: 42, height: 8)
                .rotationEffect(.degrees(-45))
        }
        .foregroundStyle(.gray)
    }
}
#Preview {
    CardSkeletonWithData()
}
