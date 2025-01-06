//
//  UserDetailsView.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 02/01/25.
//

import SwiftUI

struct UserDetailsView: View {
    var body: some View {
        HStack {
            Circle()
                .fill(Color(.red))
                .frame(width: 48, height: 48)
                .overlay(
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(Color(.white).opacity(0.7))
                )

            VStack {
                Text("Bom dia")
                    .font(.body)
                    .foregroundStyle(Color(.white).opacity(0.7))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                Text("Henrique Delgado")
                    .font(.body)
                    .foregroundStyle(Color(.red))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)

            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(Color(.white).opacity(0.7))
                    .padding(.trailing, 10)

                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundStyle(Color(.white).opacity(0.7))
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .frame(maxWidth: .infinity, alignment: .top)
        .background(Color(.black))

    }
}

#Preview {
    UserDetailsView()
}
