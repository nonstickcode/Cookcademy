//
//  ContentView.swift
//  Cookcademy
//
//  Created by Cody McRoy on 4/7/22.
//

import SwiftUI

struct RecipesListView: View {
    @StateObject var recipeData = RecipeData()
    
    private let listBackgroundColor = AppColor.background
    private let listTextColor = AppColor.foreground
    
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes) { recipe in
                    NavigationLink(recipe.mainInformation.name,
                                   destination: RecipeDetailView(recipe: recipe))
                    .navigationTitle(navigationTitle)
                }
                .listRowBackground(listBackgroundColor)
                .foregroundColor(listTextColor)
            }
        }
    }
}

extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }

    var navigationTitle: String {
        "All Recipes"
    }
}


struct RecipesListView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      RecipesListView()
    }
  }
}
