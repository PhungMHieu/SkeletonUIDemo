//
//  UserView.swift
//  SkletonUITest
//
//  Created by Admin on 9/9/25.
//

import SwiftUI

import SkeletonUI
import SwiftUI

//struct UsersView: View {
//    @State var users = [String]()
//
//    var body: some View {
//        Text("Finished requesting \(users.count) users!")
//            .skeleton(with: users.isEmpty, shape: .rounded(.radius(12, style: .circular)))
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//                    self.users = ["John Doe", "Jane Doe", "James Doe", "Judy Doe"]
//                }
//        }
////    Text("Finished requesting \(users.count) users!"))
////            .skeleto
//    }
//}
import SkeletonUI
import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let name: String
}

struct UsersView: View {
    @State var users = [User]()

    var body: some View {
        SkeletonList(with: users, quantity: 6) { loading, user in
            ZStack {
                Text(user?.name)
                    .skeleton(with: loading,
                              animation: .pulse(),
                              appearance: .solid(color: .red, background: .blue),
                              shape: .rectangle,
                              lines: 3,
                              scales: [1: 0.5])
                Image(systemName: "square.and.arrow.up.fill")
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.users = [User(name: "John Doe"),
                              User(name: "Jane Doe"),
                              User(name: "James Doe"),
                              User(name: "Judy Doe")]
            }
        }
    }
}
#Preview {
    UsersView()
}
