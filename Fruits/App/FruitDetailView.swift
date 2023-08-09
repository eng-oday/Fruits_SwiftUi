//
//  FruitDetailView.swift
//  Fruits
//
//  Created by user on 09/08/2023.
//

import SwiftUI
struct FruitDetailView: View {
    //PROPERTIES

    var fruit:FruitModel
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //header
                    FruitHeaderView(fruit: fruit)
                        
                    VStack(alignment: .leading, spacing: 20) {
                        //tittle
                        Text(fruit.tittle)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // headline
                        Text(fruit.headLine)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //nutrients
                        
                        
                        //sub headline
                        Text("Learn More About \(fruit.tittle)".uppercased())
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //description
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom , 20)
                        
                    }// VSTACK
                    .padding(.horizontal , 20)
                    .frame(maxWidth: 640,alignment: .center)
                }// VSTACK
                .navigationTitle(fruit.tittle)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            } // SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }// NAVIGATION
        
        }
        
    }


struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[1])
            .previewLayout(.sizeThatFits)
    }
}
