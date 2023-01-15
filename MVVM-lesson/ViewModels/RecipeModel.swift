//
//  recipeModel.swift
//  MVVM-lesson
//
//  Created by Tom Erik Heggedal on 11/16/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Get the path to the JSON file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            // Create a url object
            let url = URL(fileURLWithPath: path)
            
            // Error handling
            do {
                // Put the code that potentially throws an error
                // Create a data object with the data at the url

                let data = try Data(contentsOf: url)
                
                // Parse the data
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    // set unique IDs for each instance
                    for r in recipeData {
                        
                        // Set unique id for each recipe in the recipeData array
                        r.id = UUID()
                    }
                    
                    // Assign the data to the published property
                    self.recipes = recipeData
                }
                
                catch {
                    // Couldnt decode JSOM
                    print(error)
                    
                }
                
            }
            
            catch {
                // Execution will come here if an error is thrown
                // Handle the error
                
                print(error)
            }
            
            
          
        }
        
        

    }
}
