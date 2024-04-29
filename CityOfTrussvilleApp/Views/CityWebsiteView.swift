//
//  CityWebsiteView.swift
//  CityOfTrussvilleApp
//
//  Created by Emily Coggins on 4/28/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct CityWebsiteView: View {
    var body: some View {
        WebView(url: URL(string: "https://trussville.org/")!)
            .navigationTitle("City Website")
    }
}


#Preview {
    CityWebsiteView()
}
