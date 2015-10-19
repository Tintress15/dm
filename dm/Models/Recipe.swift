//
//  Recipe.swift
//  dm
//
//  Created by mpc on 10/17/15.
//  Copyright © 2015 mpc. All rights reserved.
//

import Foundation

class Recipe {
    //MARK: - Properties
    private var _name          : String
    private var _category      : String
    private var _directions    : String
    private var _ingredients   : String
    private var _imageName     : String
    
    
    //MARK: - Initializers
    init() {
        self._name        = ""
        self._category    = ""
        self._directions  = ""
        self._ingredients = ""
        self._imageName   = ""
    }
    
    
    //MARK: - Setters
    func setName(name: String) {
        self._name = name
    }
    
    func setCategory(category: String) {
        self._category = category
    }
    
    func setDirections(directions : String) {
        self._directions = directions
    }
    
    func setIngredients(ingredients : String) {
        self._ingredients = ingredients
    }

    
    func setImageName(imageName: String) {
        self._imageName = imageName
    }
    
    
    //MARK: - Getters
    func name() -> String {
        return self._name
    }
    
    func category() -> String {
        return self._category
    }
    
    func directions() -> String {
        return self._directions
    }
    
    func ingredients() -> String {
        return self._ingredients
    }
    
    func imageName() -> String {
        return self._imageName
    }
}