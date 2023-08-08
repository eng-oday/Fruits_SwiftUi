//
//  OnBoardingView.swift
//  Fruits
//
//  Created by user on 08/08/2023.
//

import SwiftUI

struct OnBoardingView: View {
    
    //PROPERTIES
    var fruits:[FruitModel] = fruitData
    var body: some View {
        
        // BODY
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruitModel: item)
            }
        } // TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
        
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
