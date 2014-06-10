//
//  ViewController.swift
//  CracklePop Swift
//
//  Created by Laura Skelton on 6/9/14.
//  Copyright (c) 2014 Laura Skelton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var cracklePopLabel: UILabel;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printCracklePop()
    }
    
    func printCracklePop() {
        
        // A program that prints out the numbers 1 to 100 (inclusive).
        // If the number is divisible by 3, print Crackle instead of the number.
        // If it's divisible by 5, print Pop.
        // If it's divisible by both 3 and 5, print CracklePop.
        
        for (var i=1; i<=100; i++) {
            // Print number or special word for each i
            
            // Check if i is divisible by 3
            if (i % 3 == 0) {
                // i is divisible by 3
                
                // Check if i is also divisible by 5
                if (i % 5 == 0) {
                    // i is divisible by 3 and 5, so print CracklePop
                    println("CracklePop")
                } else {
                    // i is divisible by 3 and not 5, so print Crackle
                    println("Crackle")
                }
            }
                
                // Check if i is divisible by 5
            else if (i % 5 == 0) {
                // i is divisible by 5 and not 3, so print Pop
                println("Pop")
            }
                
                // Otherwise i is not divisible by 3 or 5
            else {
                // i is not divisible by 3 or 5, so print the number
                println("\(i)")
            }
        }
    }
    
    @IBAction func displayCracklePop() {
        // A program that prints out the numbers 1 to 100 (inclusive).
        // If the number is divisible by 3, print Crackle instead of the number.
        // If it's divisible by 5, print Pop.
        // If it's divisible by both 3 and 5, print CracklePop.
        
        var cracklePopString = ""
        
        for (var i=1; i<=100; i++) {
            // Print number or special word for each i
            
            // Check if i is divisible by 3
            if (i % 3 == 0) {
                // i is divisible by 3
                
                // Check if i is also divisible by 5
                if (i % 5 == 0) {
                    // i is divisible by 3 and 5, so print CracklePop
                    
                    cracklePopString = cracklePopString + "CracklePop"
                    
                } else {
                    // i is divisible by 3 and not 5, so print Crackle
                    
                    cracklePopString = cracklePopString + "Crackle"

                }
            }
                
                // Check if i is divisible by 5
            else if (i % 5 == 0) {
                // i is divisible by 5 and not 3, so print Pop
                cracklePopString = cracklePopString + "Pop"

            }
                
                // Otherwise i is not divisible by 3 or 5
            else {
                // i is not divisible by 3 or 5, so print the number
                cracklePopString = cracklePopString + String(i)

            }
            
            if (i < 100) {
                cracklePopString = cracklePopString + ", "
            }
        }
        
        // show program results on screen
        cracklePopLabel.text = cracklePopString;
        
    }
}