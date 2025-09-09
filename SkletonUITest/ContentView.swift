//
//  ContentView.swift
//  SkletonUITest
//
//  Created by Admin on 9/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CardSkeletonWithData()
            CardSkeletonWithData()
            CardSkeletonWithData()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
