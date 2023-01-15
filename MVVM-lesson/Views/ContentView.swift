//
//  ContentView.swift
//  MVVM-lesson
//
//  Created by Tom Erik Heggedal on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
//        NavigationView {
//            List(model.recipes) { r in
//                Text(r.name)
//            }
//        }
        
                    NavigationView {
                        List(model.recipes) { r in
        
                            NavigationLink {
                                RecipeView(recipe:r)
                            } label: {
                                HStack (spacing: 12){
                                    Image(r.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 52, height: 52)
                                        .clipped()
                                        .cornerRadius(8)
        
                                    VStack (alignment: .leading) {
                                        Text(r.name)
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .textCase(.uppercase)
                                    }
                                    Spacer()
                                    
                                }
                            }
        
        
                    }
                        .navigationTitle("My recipes")
                        .listStyle(.plain)
        
        
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
