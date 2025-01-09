//
//  MangaDetailsView.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 07/01/25.
//

import SwiftUI

struct MangaDetailsView: View {
    @State var homeModel = HomeModel()

    var body: some View {
        VStack {
            ZStack {
                Image("OnePieceCapa")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(maxHeight: .infinity)

                RoundedRectangle(cornerRadius: 0)
                    .fill(
                        RadialGradient(
                            colors: [.clear, .blackapp],
                            center: .center,
                            startRadius: 0,
                            endRadius: 350)
                    )
                    .frame(maxHeight: .infinity).ignoresSafeArea(edges: .top)
            }
            .frame(maxWidth: 100, maxHeight: 327, alignment: .top)

            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(.blackapp))

                HStack {
                    Text("One Piece")
                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color(.whiteapp))

                    Spacer()

                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundColor(.yellow)

                    Text("9.8")
                        .font(.footnote)
                        .foregroundStyle(Color(.whiteapp))

                    Image(systemName: "eye")
                        .resizable()
                        .frame(width: 16.5, height: 12)
                        .foregroundColor(Color(.whiteapp))

                    Text("89,200")
                        .font(.footnote)
                        .foregroundStyle(Color(.whiteapp))
                }
                .padding()
                .padding(.top, -60)

                Text("One Piece é simplemente a maior obra literária já escrita, critica o imperialismo e te incentiva a ser uma pessoa mais gentil e alegre.")
                    .font(.footnote)
                    .foregroundStyle(Color(.whiteapp).opacity(0.5))
                    .padding()
                    .padding(.top, 38)

            }
            .frame(maxWidth: 360, maxHeight: 128)
            .shadow(radius: 15)
            .padding(.top, -80)

            ScrollView(.vertical, showsIndicators: false) {
                Text("Chapters")
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color(.whiteapp))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 33)


                ForEach(0..<homeModel.onePieceChapters.count, id: \.self) { index in
                    HStack {
                        Image(homeModel.onePieceChapters[index].imageName)
                            .resizable()
                            .frame(maxWidth:84, maxHeight: 80)
                            .cornerRadius(15)
                            .padding(.all, 10)

                        VStack(alignment: .leading) {
                            Text(homeModel.onePieceChapters[index].chapters)
                                .font(.body)
                                .foregroundStyle(Color(.whiteapp))
                            Text(homeModel.onePieceChapters[index].name)
                                .font(.title3)
                                .bold()
                                .foregroundStyle(Color(.redapp))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)

                    }
                    .frame(maxWidth: .infinity, maxHeight: 96)
                    .background(RoundedRectangle(cornerRadius: 25).stroke(Color(.redapp)))
                    .padding(.bottom, 10)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea(edges: .top)
        .background(Color(.blackapp))
    }
}

#Preview {
    MangaDetailsView()
}
