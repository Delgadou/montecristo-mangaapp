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
        ScrollView(.vertical) {
            VStack {
                Text("Most Popular")
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color(.whiteapp))
                    .frame(maxWidth: .infinity, alignment: .topLeading)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(0..<$homeModel.mangas.count, id: \.self) { index in
                            NavigationLink(destination: MangaDetailsView()) {
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
                                                colors: [.clear, .blackapp],
                                                center: .center,
                                                startRadius: 0,
                                                endRadius: 240)
                                        )
                                        .frame(width: 296, height: 200)

                                    VStack {
                                        Text(homeModel.mangas[index].name)
                                            .font(.title3)
                                            .bold()
                                            .foregroundStyle(Color(.whiteapp))
                                            .frame(maxWidth: .infinity, alignment: .leading)

                                        HStack {
                                            Image(systemName: "star.fill")
                                                .resizable()
                                                .frame(width: 24, height: 24)
                                                .foregroundColor(.yellow)

                                            Text(homeModel.mangas[index].score)
                                                .foregroundStyle(Color(.whiteapp))

                                            Text(homeModel.mangas[index].chapters)
                                                .foregroundStyle(Color(.whiteapp))
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    .padding()
                                }
                                .padding(.trailing)
                            }
                        }
                    }
                }
                .padding(.bottom, 24)

                HStack {
                    Text("Recent Release")
                        .bold()
                        .font(.title)
                        .foregroundStyle(Color(.whiteapp))

                    Spacer()

                    Text("See more")
                        .bold()
                        .font(.footnote)
                        .foregroundStyle(Color(.redapp))
                }

                MediumCarousel(carouselItems: homeModel.recentMangas)

                HStack {
                    Text("Coming Soon")
                        .bold()
                        .font(.title)
                        .foregroundStyle(Color(.whiteapp))

                    Spacer()

                    Text("See more")
                        .bold()
                        .font(.footnote)
                        .foregroundStyle(Color(.redapp))
                }

                MediumCarousel(carouselItems: homeModel.comingSoonMangas)

            }
            .frame(maxWidth: .infinity)
            .background(Color(.blackapp))
        }

    }
}

struct MediumCarousel: View {
    var carouselItems: [Manga]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(0..<carouselItems.count, id: \.self) { index in
                    VStack {
                        Image(carouselItems[index].imageName)
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                            .frame(width: 128, height: 190)
                            .cornerRadius(25)

                        Text(carouselItems[index].name)
                            .font(.subheadline)
                            .bold()
                            .foregroundStyle(Color(.whiteapp))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top, 5)
                    }
                    .padding(.trailing, 16)
                }
            }
        }
        .padding(.bottom, 16)
    }
}

#Preview {
    PopularMangasCarrouselView()
}
