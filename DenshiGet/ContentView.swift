//
//  ContentView.swift
//  DenshiGet
//
//  Created by cmStudent on 2022/05/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //マップを表示
        MapView(searchKey: "日本電子専門学校", mapType: .standard)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
