//
//  DataItem.swift
//  SwiftDataSample
//
//  Created by Hangyeol on 10/31/23.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    @Attribute(.unique) let id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
