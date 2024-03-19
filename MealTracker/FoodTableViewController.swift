//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Berlin Thomas on 2024-03-18.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] = [
        Meal(name: "breakfast", food: [
            Food(name: "Eggs", description: "Scrambled with bacon in a frying pan"),
            Food(name: "Hashbrowns", description: "Cut potatoes then fry in oil until brown"),
            Food(name: "Bacon", description: "Key food in all breakfast meals.")
        ]),
        Meal(name: "lunch", food: [
            Food(name: "Sandwich", description: "Easy to fix. Always delicious"),
            Food(name: "Chips", description: "Put a few in the sandwich for enhanced flavor"),
            Food(name: "Apple", description: "An apple a day keeps the doctor away.")
        ]),
        Meal(name: "dinner", food: [
            Food(name: "Steak", description: "Everyone needs some good protein."),
            Food(name: "Potatoes", description: "Great addition to go along with steak."),
            Food(name: "Brocolli", description: "Always finish out the food pyramid.")
        ])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)

        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        
        return cell
    }

}
