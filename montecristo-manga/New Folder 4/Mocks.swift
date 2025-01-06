//
//  Mocks.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 06/01/25.
//

import Foundation

struct Manga: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var chapters: String
    var score: String
    
    static func mockData() -> [Manga]  {
        [Manga(name: "One Piece", imageName: "OnePieceCapa", chapters: "Chapters: 1067", score: "5.0"),
         Manga(name: "Haikyuu", imageName: "HaikyuuCapa", chapters: "Chapters: 420", score: "3.5"),
         Manga(name: "Sakamoto Days", imageName: "SakamotoDaysCapa", chapters: "Chapters: 300", score: "4.5"),
        ]
    }
}
