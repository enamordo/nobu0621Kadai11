//
//  ModalView.swift
//  Kadai11
//
//  Created by nobu0621 on 2024/09/21.
//

import SwiftUI

struct ModalView: View {
    @Binding var isModal: Bool
    @Binding var selectedPrefecture: String

    let prefectures = ["北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県", "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県", "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県", "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県", "宮崎県", "鹿児島県", "沖縄県"]

    var body: some View {
        NavigationView {
            List(prefectures.indices, id: \.self) { index in
                Button(action: {
                    selectedPrefecture = prefectures[index]
                    isModal = false
                }, label: {
                    HStack {
                        Text(prefectures[index])
                        Spacer()
                    }
                })
            }
            .navigationTitle("都道府県")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.inset)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isModal = false
                    }, label: {
                        Text("Cancel")
                    })
                }
            }
        }
    }
}

#Preview {
    ModalView(
        isModal: Binding.constant(true),
        selectedPrefecture: Binding.constant("東京都")
    )
}
