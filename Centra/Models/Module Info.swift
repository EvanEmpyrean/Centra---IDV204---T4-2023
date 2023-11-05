//
//  Module Info.swift
//  Centra
//
//  Created by Evan Triadafillou on 2023/10/30.
//

import Foundation

struct Module: Identifiable {
    var id = UUID()
    var title: String
    var code: String
    
    var yearDate: Int
    var term: Int
    var yearLevel: String
    
    var cover: String
}

// DUMMY MODULE FOR TESTING
let dummyModule: Module = Module(
    title: "IDV Dummy Testing Module",
    code: "IDV204",
    yearDate: 2023,
    term: 4,
    yearLevel: "2nd",
    cover: "Visual Culture"
)
