//
//  Model1.swift
//  HigherOrder
//
//  Created by Seham almarshedi on 04/05/1445 AH.
//

import Foundation

struct Fruit  : Identifiable{
    let id: UUID
    var name: String
    var image: String
   

    
}
class FruitData: ObservableObject{
    @Published var frtData: [Fruit]
    init(){
        frtData = [
            Fruit(id: UUID(), name: "apple", image:"apple"),
            Fruit(id: UUID(), name: "lemon", image:"lemon"),
            Fruit(id: UUID(), name: "lime", image:"lime"),
            Fruit(id: UUID(), name: "mango", image:"mango"),
            Fruit(id: UUID(), name: "pear", image:"pear"),
            Fruit(id: UUID(), name: "plum", image:"plum"),
            Fruit(id: UUID(), name: "strawberry", image:"strawberry"),
            Fruit(id: UUID(), name: "watermelon", image:"watermelon"),
            Fruit(id: UUID(), name: "grapefruit", image:"grapefruit"),
            Fruit(id: UUID(), name: "apple", image:"apple"),
            Fruit(id: UUID(), name: "grapefruit", image:"grapefruit"),
    ]
        
    }
}

