//
//  ContentView.swift
//  Kadai11
//
//  Created by nobu0621 on 2024/09/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedPrefecture = "未選択"
    @State private var isModal = false

    var body: some View {
        VStack {
            HStack {
                Text("都道府県")
                Spacer()
                Text(selectedPrefecture)
                Spacer()
                Button(action: {
                    isModal = true
                }, label: {
                    Text("変更")
                })
                .fullScreenCover(
                    isPresented: $isModal,
                    content: {
                        ModalView(
                            isModal: $isModal,
                            selectedPrefecture: $selectedPrefecture
                        )
                    }
                )
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
