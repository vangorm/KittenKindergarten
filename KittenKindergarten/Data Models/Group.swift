//
//  Group.swift
//  KittenKindergarten
//
//  Created by Sophia Miles on 8/17/22.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Group : Identifiable, Codable {
    @DocumentID var id: String?
    var name: String
    var age: Int?
    var frequency: Int?
    var lowEnd: Int?
    var highEnd: Int?
    var foodType: String?
    var behavior: String?
    @ServerTimestamp var createdTime: Timestamp?
}

#if DEBUG
let testDataGroup = [
    Group(name: "Bottle Baby", age: 7, frequency: 2, lowEnd: 1, highEnd: 8, foodType: "Formula", behavior: "Sleepy"),
    Group(name: "Weaning", age: 28, frequency: 4, lowEnd: 15, highEnd: 30, foodType: "Gruel", behavior: "Finicky"),
    Group(name: "Independent", age: 42, frequency: 6, lowEnd: 30, highEnd: 50, foodType: "Mixed", behavior: "Playful")
]
#endif
