//
//  Animal.swift
//  Africa
//
//  Created by Alessio Toma on 30/10/24.
//

import Foundation

struct AnimalModel: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
