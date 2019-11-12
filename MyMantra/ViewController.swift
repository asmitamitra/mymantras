//
//  ViewController.swift
//  MyMantra
//
//  Created by Asmita Mitra on 11/11/19.
//  Copyright © 2019 Asmita Mitra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listOfQuotes = ["As you start to walk on the way, the way appears", "What you seek, is seeking you.", "To stop defeating yourself, stop deceiving yourself - begin with what you are, not what you appear to be.", "Let it go. Get ready to vibrate higher. And become a magnet to miracles. Get ready to be in a place where everything feels right. Let your heart be calm. Soul be lit. And your vision be clear. Be at peace with your past, present & future. And let the magic unleash within you.", "Life can only be understood backwards; but it must be lived forwards.", "It always seems impossible until it’s done.", "Keep your eyes on the stars and your feet on the ground. ", "It’s better to be a lion for a day than a sheep all your life.", "Life is a question and how we live it is our answer.", "Difficult and meaningful will always bring more satisfaction than easy and meaningless. ", "The journey of a thousand miles begins with one step.", "The mind is everything. What you think you become.", "The best way out is always through. ", "Our life is frittered away by detail. Simplify, simplify. ", "Life must be lived and curiosity kept alive. One must never, for whatever reason, turn his back on life. ", "Life is really simple, but we insist on making it complicated. ", "Look deep into nature, and then you will understand everything better.", "Never let the fear of striking out keep you from playing the game."]
//    var todaysQuote = ""
    var colorSets = [[CGColor]]()
    func createColors(){
        colorSets.append([UIColor(red:0.69, green:0.04, blue:0.29, alpha:1.0).cgColor, UIColor(red:1.00, green:0.65, blue:0.79, alpha:1.0).cgColor])
        colorSets.append([UIColor(red:0.11, green:0.57, blue:0.00, alpha:1.0).cgColor, UIColor(red:0.71, green:1.00, blue:0.64, alpha:1.0).cgColor])
        colorSets.append([UIColor(red:0.03, green:0.65, blue:1.00, alpha:1.0).cgColor, UIColor(red:0.04, green:0.36, blue:0.54, alpha:1.0).cgColor])
        colorSets.append([UIColor(red:1.00, green:0.95, blue:0.00, alpha:1.0).cgColor, UIColor(red:1.00, green:0.90, blue:0.00, alpha:0.5).cgColor])
//        colorSets.append([UIColor.red.cgColor, UIColor.yellow.cgColor])
    }
    
    @IBAction func refreshButton(_ sender: Any) {
        let colorNumber = Int.random(in: 0 ..< colorSets.count)
        changeGradientColor(number: colorNumber)
        getRandomText()
    }
    @IBOutlet weak var quoteText: UITextView!
    var gradientLayer: CAGradientLayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        createColors()
        let colorNumber = Int.random(in: 0 ..< colorSets.count)
        createGradientLayer(number: colorNumber)
        getRandomText()
        // Do any additional setup after loading the view.
        
        
     }
    func createGradientLayer(number: Int){
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = colorSets[number]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)

        self.view.layer.insertSublayer(gradientLayer, at:0)
        
    }
    
    func changeGradientColor(number: Int){
        gradientLayer.colors = colorSets[number]
    }
    
    func getRandomText(){
        let number = Int.random(in: 0 ..< listOfQuotes.count)
        quoteText.text = listOfQuotes[number]
    }
    
}

