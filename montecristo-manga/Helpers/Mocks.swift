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

    static func mockData() -> [Manga] {
        [Manga(name: "One Piece", imageName: "OnePieceCapa", chapters: "Chapters: 1067", score: "5.0"),
         Manga(name: "Haikyuu", imageName: "HaikyuuCapa", chapters: "Chapters: 420", score: "3.5"),
         Manga(name: "Sakamoto Days", imageName: "SakamotoDaysCapa", chapters: "Chapters: 300", score: "4.5"),
        ]
    }

    static func mockReleaseChapterData() -> [Manga] {
        [Manga(name: "Jujutsu Kaisen", imageName: "JujutsuRelease", chapters: "Chapters: 400", score: "4.5"),
         Manga(name: "Boku no Hero", imageName: "MyHeroAcademiaRelease", chapters: "Chapters: 420", score: "3.5"),
         Manga(name: "Solo Leveling", imageName: "SoloLevelingRelease", chapters: "Chapters: 120", score: "3.3"),
         Manga(name: "Hajime no Ippo", imageName: "ippo", chapters: "Chapters: 1480", score: "4.8"),
         Manga(name: "Gash Bell", imageName: "GashBell", chapters: "Chapters: 200", score: "3.8"),
         Manga(name: "Kagurabachi", imageName: "Kagurabachi", chapters: "Chapters: 60", score: "3.9"),
        ]
    }

    static func mockComingSoon() -> [Manga] {
        [Manga(name: "Tower of God", imageName: "TowerCapa", chapters: "Chapters: 37", score: "0.0"),
         Manga(name: "Dice", imageName: "DiceCapa", chapters: "Chapters: 420", score: "3.5"),
         Manga(name: "Kim", imageName: "KimCapa", chapters: "Chapters: 5", score: "0.0"),
        ]
    }
}
