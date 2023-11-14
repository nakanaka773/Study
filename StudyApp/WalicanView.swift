//
//  WalicanView.swift
//  StudyApp
//
//  Created by 平山奈々海 on 2023/11/14.
//

import SwiftUI

struct WalicanView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// 親View ⇨ 呼び出す側のView
struct AView: View {

    @State var isCheck: Bool = false // ⬅︎Bool値が保持される状態変数

    var body: some View {

        VStack(spacing: 20) {

            // ベルマーク "true"と"false"でデザインが変化
            Image(systemName: isCheck ? "bell.fill" : "bell.slash")
                .font(.largeTitle)
                .foregroundColor(.black)

            BView(isCheck: $isCheck) // ⬅︎ 子Viewを呼び出している(この時に参照を渡す)

        } // VStack
    } // body
} // View

// 子View ⇨ 呼び出される側のView
struct BView: View {

    @Binding var isCheck: Bool // 親Viewのプロパティ参照を受け取る

    var body: some View {

        Button("切り替えボタン") {
            isCheck.toggle() // 参照共有しているBool型ブロパティの値を反転する
        }

    } // body
} // View

struct WalicanView_Previews: PreviewProvider {
    static var previews: some View {
        AView()
    }
}
