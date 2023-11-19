//
//  Model.swift
//  HigherOrder
//
//  Created by Seham almarshedi on 04/05/1445 AH.
//

import Foundation
struct Model: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let dueDate: Date
    let priority: Priority

    enum Priority: Int {
        case low, medium, high
    }
}

    
    let tasks: [Model] = [
        .init(name: "Quiz1", dueDate: stringToDate("2024/02/11"), priority: .low),
        .init(name: "Quiz2", dueDate: stringToDate("2024/02/11"), priority: .high),
        .init(name: "Quiz3", dueDate: stringToDate("2024/06/11"), priority: .medium),
        .init(name: "Quiz4", dueDate: stringToDate("2024/07/11"), priority: .high),
        .init(name: "Quiz5", dueDate:stringToDate ("2024/09/10"), priority: .low),
        .init(name: "Quiz6", dueDate: stringToDate("2023/09/10"), priority: .low),
        .init(name: "Quiz7", dueDate: stringToDate("2023/12/10"), priority: .high),
        .init(name: "Quiz8", dueDate: stringToDate("2023/11/21"), priority: .low),
        .init(name: "Quiz9", dueDate: stringToDate("2023/11/30"), priority: .medium)
    ]



func stringToDate(_ str: String) -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
    return formatter.date(from: str) ?? Date()
}


