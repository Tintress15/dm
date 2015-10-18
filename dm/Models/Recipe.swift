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
    private var _category      : String
    private var _directions    : String
    private var _ingredients   : String
    private var _name          : String
    private var _imageName     : String
    
    
    //MARK: - Setters
    func setCategory(category: String) {
        self._category = category
    }
    
    func setDirections(directions : String) {
        self._directions = directions
    }
    
    func setIngredients(ingredients : String) {
        self._ingredients = ingredients
    }
    
    func setName(name: String) {
        self._name = name
    }
    
    func setImageName(imageName: String) {
        self._imageName = imageName
    }
    
    
    
    //MARK: - Getters
    func category() -> String {
        return self._category
    }
    
    func directions() -> String {
        return self._directions
    }
    
    func ingredients() -> String {
        return self._ingredients
    }
    
    func name() -> String {
        return self._name
    }
    
    func imageName() -> String {
        return self._imageName
    }
    
    
    
    
    
    //MARK: - Init
    init() {
        self._category    = ""
        self._directions  = ""
        self._ingredients = ""
        self._name        = ""
        self._imageName   = ""
    }
    
}