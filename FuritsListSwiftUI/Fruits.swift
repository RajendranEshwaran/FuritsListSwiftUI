//
//  Fruits.swift
//  FuritsListSwiftUI
//
//  Created by gomathi saminathan on 10/9/20.
//

import Foundation
import SwiftUI

struct Fruits:Identifiable {
    var id = UUID()
        var name: String
        var capacity: Int
        
        var imageName: String { return name }
        var thumbnailName: String { return name + "_thumbnail"}
    
}
let testData = [
    Fruits(name: "Bear", capacity: 7),
    Fruits(name: "2f", capacity: 6),
    Fruits(name: "3f", capacity: 4),
    Fruits(name: "4f", capacity: 12),
    Fruits(name: "Kangaroo", capacity: 3),
    Fruits(name: "Koala", capacity: 11),
    Fruits(name: "Lion", capacity: 14),
    Fruits(name: "Penguin", capacity: 5),
    Fruits(name: "Rabbit", capacity: 7),
    Fruits(name: "Tiger", capacity: 10),
]
