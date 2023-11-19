//
//  Model2.swift
//  HigherOrder
//
//  Created by Seham almarshedi on 05/05/1445 AH.
//

import Foundation
struct LandModel:Identifiable {
    let id: UUID
    var name: String
    var image: String
    var price:Int
    
    
}
class ModelLand: ObservableObject{
    @Published var prodct: [LandModel]
    init() {
        prodct = [
            LandModel(id: UUID(), name: "lakemcdonald",  image: "lakemcdonald",price: 50),
            LandModel (id: UUID(), name: "Arainbowlak",image: "rainbowlake", price: 100 ),
            LandModel (id: UUID(), name: "Rainbowelak",image: "silversalmoncreek", price: 800 ),
            LandModel (id: UUID(), name: "Stmarrylake",image: "stmarylake_feature", price: 200 ),
            LandModel (id: UUID(), name: "Turtlerocklod",image: "turtlerock_feature", price: 50 ),
            LandModel (id: UUID(), name: "lakemcdonald",image: "twinlake", price: 60 ),
            LandModel (id: UUID(), name: "Arainbowlake",image: "rainbowlake", price: 50 )
   ] }
}
