//
//  RecipeTabView.swift
//  MVVM-lesson
//
//  Created by Tom Erik Heggedal on 1/18/23.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            Text("Featured")
                .tabItem {
                    VStack {
                        Image(systemName: "star")
                        Text("Featured")
                    }
                }
            
            ContentView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("My list")
                }
            
        }
        
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
