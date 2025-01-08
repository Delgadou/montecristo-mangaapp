//
//  MainView.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 07/01/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }

                ContentView()
                    .tabItem {
                        Image(systemName: "heart")
                    }

                ContentView()
                    .tabItem {
                        Image(systemName: "safari")
                    }
            }
            .foregroundColor(Color(.redapp))
            .background(Color(.redapp))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(.redapp))
    }
}

#Preview {
    MainView()
}
