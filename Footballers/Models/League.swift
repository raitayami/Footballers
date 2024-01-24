//
//  League.swift
//  Footballers
//
//  Created by Tayami Rai on 24/01/2024.
//

import Foundation


struct League: Decodable, Identifiable{
    var id = UUID()
    var name: String
}
