//
//  ContentView.swift
//  Fruits
//
//  Created by 3rabApp-oday on 03/08/2023.
//

import SwiftUI

struct ContentView: View {
    var fruits:[FruitModel] = fruitData
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { fruit in
                
                NavigationLink(destination:FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical , 4)
                }
            }
            .navigationTitle("Fruits")
        }// NAVIGATION VIEW
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
