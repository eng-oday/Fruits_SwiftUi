//
//  FruitCardView.swift
//  Fruits
//
//  Created by 3rabApp-oday on 03/08/2023.
//

import SwiftUI

struct FruitCardView: View {
    
    @State var isAnimating:Bool = false
    let fruitModel:FruitModel
    
    var body: some View {
        
        ZStack {
          
        VStack(spacing:20) {
            // FRUIT: IMAGE
            Image(fruitModel.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0).opacity(0.15), radius: 8 , x: 6 , y: 8)
                .scaleEffect(isAnimating ? 1.0 : 6.0)
            //FRUIT : TITTLE
            Text(fruitModel.tittle)
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color(red: 0, green: 0, blue: 0).opacity(0.15), radius: 2, x: 2, y: 2)
            
            //FRUIT : HEADLINE
            
            Text(fruitModel.headLine)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal , 16)
                .frame(maxWidth: 480)
            
            //BUTTON : START
            
            StartButtonView()

            
        } // : VSTACK
        
    } //: ZSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })

        
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruitModel.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal , 16)
    }
        
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruitModel: fruitData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
