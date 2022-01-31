//
//  Story.swift
//  What will you choose?
//
//  Created by Inna Kokorina on 31.01.2022.
//

import Foundation
struct Story{
    var title: String
    var choice:[String]
    var dest:[Int]
    
    init(title: String, choice:[String], dest:[Int]) {
    self.title = title
    self.choice = choice
    self.dest = dest
    }
    
}

