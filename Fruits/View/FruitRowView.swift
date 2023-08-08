//
//  FruitRowView.swift
//  Fruits
//
//  Created by user on 08/08/2023.
//

import SwiftUI

struct FruitRowView: View {
    // PROPERTIES
    var fruit:FruitModel
    
    var body: some View {
        // BODY
        HStack {
            // IMAGE
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.3), radius: 3, x: 2, y: 2)
                .background {
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                }
                .cornerRadius(8)
            // TITTLE AND DESCRIPTION
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.tittle)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headLine)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }// VSTACK
            
        }// HSTACK

    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
