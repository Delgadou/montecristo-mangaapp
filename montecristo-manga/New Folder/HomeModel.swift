//
//  HomeModel.swift
//  montecristo-manga
//
//  Created by Henrique Delgado on 02/01/25.
//

import Foundation
import SwiftUI

@Observable
class HomeModel {
    var mangas: [Manga] = Manga.mockData()
    var currentIndex: Int = 0

}
