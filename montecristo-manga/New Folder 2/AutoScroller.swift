//
//  AutoScroller.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 06/01/25.
//

import SwiftUI

struct AutoScroller: View {
    var imageNames: [String]
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()

    @State private var selectedImageIndex: Int = 0

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()

            TabView(selection: $selectedImageIndex) {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    
                }
            }
        }
    }
}

#Preview {
    AutoScroller(imageNames: [ "OnePieceCapa", "HaikyuuCapa", "SakamotoDaysCapa"])
}
