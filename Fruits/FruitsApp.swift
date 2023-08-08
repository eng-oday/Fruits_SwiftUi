//
//  FruitsApp.swift
//  Fruits
//
//  Created by 3rabApp-oday on 03/08/2023.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage ("isOnBoardingView") var isOnBoardingView:Bool = true
    
    var body: some Scene {
        WindowGroup {
           if isOnBoardingView{
                OnBoardingView()
            }else {
                ContentView()
            }
        }
    }
}
