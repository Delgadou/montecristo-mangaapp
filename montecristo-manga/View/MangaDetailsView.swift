//
//  MangaDetailsView.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 07/01/25.
//

import SwiftUI

struct MangaDetailsView: View {
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    Image("OnePieceCapa")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)

                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            RadialGradient(
                                colors: [.clear, .blackapp],
                                center: .center,
                                startRadius: 0,
                                endRadius: 350)
                        )
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(maxWidth: .infinity, maxHeight: 327)
                .background(Color(.redapp))
                .frame(alignment: .top).ignoresSafeArea()

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
                .padding(.top, -140)
            }

            VStack {
                Text("Chapters")
                    .bold()
                    .font(.title)
                    .foregroundStyle(Color(.whiteapp))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 33)

                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(.blackapp))
                    .frame(maxWidth: .infinity, maxHeight: 96)
            }
            .padding(60)

        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .top)
        .background(Color(.redapp))

    }
}

#Preview {
    MangaDetailsView()
}
