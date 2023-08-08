//
//  StartButtonView.swift
//  Fruits
//
//  Created by 3rabApp-oday on 03/08/2023.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        
        Button {
            print("hi")
        } label: {
            HStack(spacing:8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal , 16)
            .padding(.vertical , 8)
            .background {
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            }
            
        } //: BUTTON
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            
    }
}
