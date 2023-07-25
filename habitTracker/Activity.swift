//
//  Activity.swift
//  habitTracker
//
//  Created by Nacho Alaves on 24/7/23.
//

import Foundation

struct Activity: Identifiable, Codable {
    var id = UUID()
    let name: String
    let description: String
}
