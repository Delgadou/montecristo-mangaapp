//
//  HomeView.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 02/01/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            UserDetailsView()
                .padding(.bottom)

            PopularMangasCarrouselView()
                .padding(.top)

        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color(.black))
    }
}

#Preview {
    HomeView()
}
