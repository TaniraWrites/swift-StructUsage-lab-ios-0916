//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    
    var finn : Character!
    var jake : Character!
    var bubblegum : Character!
    var bmo : Character!
    var lemongrab : Character!
    var lsp : Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAllCharacters()
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if let label = sender.titleLabel?.text! {
            switch label{
            case "Finn":
                updateViews(with: finn)
            case "Jake":
                updateViews(with:jake)
            case "Bubblegum":
                updateViews(with: bubblegum)
            case "BMO":
                updateViews(with: bmo)
            case "Lemongrab":
                updateViews(with: lemongrab)
            case "LSP":
                updateViews(with: lsp)
                
            default: "Does not compute."
                
            }
        }
    }
    

    
    
    
    func  createAllCharacters(){
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character (name: "Jake The Dog", species: "Magic Dog", occupation: "Sidekick", powerLevel: 70.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Candy Person", occupation: "Princess of Candy Kingdom", powerLevel: 90.0)
        bmo = Character(name: "BMO", species: "Robot Pal", occupation: "Caretaker", powerLevel: 10.0)
        lemongrab = Character(name:"Lemongrab", species: "Lemon", occupation: "Earl of Lemongrab", powerLevel: 20.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Lumpy", occupation: "Princess of LumpySpace Kingdom", powerLevel: 30.0)
    }
    
    func updateViews(with character: Character){
        characterImageView.image = character.displayImage()
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species
  
    }
    
}




