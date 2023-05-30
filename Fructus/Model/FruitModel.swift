//
//  FruitModel.swift
//  Fructus
//
//  Created by Elisha Chirchir on 29/05/2023.
//

import SwiftUI

// fruit data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}


