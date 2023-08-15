//
//  FruitNutrients.swift
//  Fruits
//
//  Created by user on 15/08/2023.
//

import SwiftUI

struct FruitNutrients: View {
    
    var fruit:FruitModel
    var Nutrients:[String] = ["Energy" , "sugar" , "fat" , "Protein" , "Vitamins" , "Minerals"]
    var body: some View {
        GroupBox{
            
            DisclosureGroup("Nutritional value per 100g") {
                
                ForEach(0..<Nutrients.count ,id: \.self) { item in
                    Divider().padding(.vertical , 2)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(Nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer()
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }
        
        
    }
}

struct FruitNutrients_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrients(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
