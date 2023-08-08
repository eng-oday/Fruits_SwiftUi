//
//  OnBoardingView.swift
//  Fruits
//
//  Created by user on 08/08/2023.
//

import SwiftUI

struct OnBoardingView: View {
    
    //PROPERTIES
    
    var body: some View {
        
        // BODY
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
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
