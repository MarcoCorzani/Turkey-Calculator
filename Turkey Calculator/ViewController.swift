//
//  ViewController.swift
//  Turkey Calculator
//
//  Created by Marco F.A. Corzani on 21.12.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    func kgPerPerson(people: Double, kg: Double) -> Double {
        
        return people * kg
    }
    
    func thawnTime(kg:Double, faktor: Double) ->Double {
        
        return (kg / faktor) * 24
    }
    
    func ofenZeit(kg: Double, faktor: Double) -> Double {
        
        return (kg / faktor) * 15
        
    }
    
    
    
    
    
    
    
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    
    
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    
    
    @IBOutlet weak var gewichtLabel: UILabel!
    
    
    @IBOutlet weak var auftauzeitLabel: UILabel!
    
    
    @IBOutlet weak var backofenZeitLabel: UILabel!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let sliderImage = UIImage(named: "knob")
        numberOfPeopleSlider.setThumbImage(sliderImage, forState:UIControlState.Normal)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }

    
    
    
    


    @IBAction func sliderAction(sender: UISlider) {
        
        
        
        
        var currentValue = Int(sender.value)
        
        numberOfPeopleLabel.text = "\(currentValue)"
        //gewichtLabel.text = "\(toString(Double(currentValue) * 0.7)) Kg"
        gewichtLabel.text = "\(toString(kgPerPerson(Double(currentValue) , kg: 0.7))) Kg"
        
        
        var auftauzeit = thawnTime( kgPerPerson(Double(currentValue) , kg: 0.7) , faktor: 1.8)
        var auftauzeitGerundet = round(auftauzeit)
        auftauzeitLabel.text = "\(toString(auftauzeitGerundet)) Stunden"
    
        var ofenzeit = round(ofenZeit(kgPerPerson(Double(currentValue) , kg: 0.7), faktor: 0.45))
        backofenZeitLabel.text = "\(toString(ofenzeit)) Minuten"
    
    }

}

