//
//  OnboardingView.swift
//  Fructus
//
//  Created by Elisha Chirchir on 29/05/2023.
//

import SwiftUI

struct OnboardingView: View {
    // properties
    
    var fruits: [Fruit] = fruitsData
    
    // body
    var body: some View {
        
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
