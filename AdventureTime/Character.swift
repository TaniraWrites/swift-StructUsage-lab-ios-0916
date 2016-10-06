//
//  Character.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

//3 Create a mutating func called fight(enemy:). The parameter is of type Character. In your implementation of this function, you should check to see if the powerLevel (on the current instance) is greater than the enemies power level which is passed into this method as an argument. If it is then you should increment the killedEnemies stored property by 1. As well, you should increase the powerLevel stored property by 10.
//
//Within this same function, if the powerLevel of the current instance is less than the enemies powerLevel than you should decrease the powerLevel stored property by 10.
//
//4 Create a mutating func called becomeBestFriends(with:). It should take in one argument called friend of type String. In your implementation of this function, you should change your bestFriend (which is a stored property) to equal this new friend which was passed into this method as an argument.
//
//5 Copy & Paste this function below where you created your becomeBestFriends(with:) function. This will be its own new function which will come in handy later.




   
struct Character{
    
    var name: String
    var species: String
    var occupation: String
    var powerLevel: Double
    var killedEnemies: Int = 0
    var bestFriend: String
    
    
  init(name:String, species:String, occupation:String, powerLevel: Double){
        self.name = name
        self.species = species
        self.occupation = occupation
        self.powerLevel = powerLevel
        self.bestFriend = " "
    }
    
    mutating func fight(_ enemy: Character){
        if self.powerLevel  > enemy.powerLevel {
            killedEnemies += 1
            powerLevel += 10.0
        } else {
            powerLevel -= 10.0
    }
    }
        mutating func becomeBestFriends(with friend:String) {
            bestFriend = friend
        }
    func displayImage() -> UIImage {
        
        switch name {
        case "Finn The Human":
            return UIImage(named: "Finn")!
        case "Jake The Dog":
            return UIImage(named: "JakeTheDog")!
        case "Princess Bubblegum":
            return UIImage(named: "PrincessBubblegum")!
        case "Lemongrab":
            return UIImage(named: "Lemongrab")!
        case "BMO":
            return UIImage(named: "BMO")!
        case "Lumpy Space Princess":
            return UIImage(named: "LumpySpacePrincess")!
        default:
            return UIImage()
        }
        
    }
    

}
