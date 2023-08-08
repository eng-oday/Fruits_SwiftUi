//
//  FruitModel.swift
//  Fruits
//
//  Created by user on 08/08/2023.
//

import Foundation
import SwiftUI


struct FruitModel:Identifiable {
    var id = UUID()
    var tittle:String
    var headLine:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
