//
//  PizzaView.swift
//  MVVM-lesson
//
//  Created by Tom Erik Heggedal on 12/1/22.
//

import SwiftUI

struct RecipeView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                VStack (alignment: .leading){
                    
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                    Text(recipe.name)
                        .font(.largeTitle)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                    Text(recipe.description)
                        .font(.headline)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                    
                    ForEach(recipe.ingredients, id: \.self) { item in
                        Text(item)
                        .padding(.vertical, 2)
                        .padding(.horizontal, 20)
                    }
                }
                }
                //.ignoresSafeArea()
                    
                }
                
        }
        
    }


struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeView(recipe: model.recipes[1])
    }
}
