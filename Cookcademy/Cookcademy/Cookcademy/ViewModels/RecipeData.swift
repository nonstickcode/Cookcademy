//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Cody McRoy on 4/7/22.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
