//
//  PopularMangasCarrouselView.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 02/01/25.
//

import SwiftUI

struct PopularMangasCarrouselView: View {
    @State var homeModel = HomeModel()
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            Text("Most Popular")
                .bold()
                .font(.title)
                .foregroundStyle(Color(.white))
                .frame(maxWidth: .infinity, alignment: .topLeading)

            ScrollView(.horizontal) {
                HStack(spacing: 0) {
                    ForEach(0..<$homeModel.mangas.count, id: \.self) { index in
                        ZStack(alignment: .bottomLeading) {
                            Image(homeModel.mangas[index].imageName)
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                                .frame(width: 296, height: 200)
                                .cornerRadius(25)

                            RoundedRectangle(cornerRadius: 25)
                                .fill(
                                    RadialGradient(
                                        colors: [.clear, .black],
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 240)
                                )
                                .frame(width: 296, height: 200)

                            VStack {
                                Text(homeModel.mangas[index].name)
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(Color(.white))
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                HStack {
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                        .foregroundColor(.yellow)

                                    Text(homeModel.mangas[index].score)
                                        .foregroundStyle(Color(.white))

                                    Text(homeModel.mangas[index].chapters)
                                        .foregroundStyle(Color(.white))
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .padding()
                        }
                        .padding(.trailing)
                    }
                }
            }
            .padding(.bottom, 24)

            HStack {
                Text("Recent Release")
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color(.white))

                Spacer()

                Text("See more")
                    .bold()
                    .font(.footnote)
                    .foregroundStyle(Color(.red))
            }
            .padding(.bottom)

            ScrollView(.horizontal) {

            }

        }
        .frame(maxWidth: .infinity)
        .background(Color(.black))
    }
}

#Preview {
    PopularMangasCarrouselView()
}
