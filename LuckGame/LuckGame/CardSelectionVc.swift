//
//  CardSelectionVc.swift
//  LuckGame
//
//  Created by Emre Ali Cönk on 1.03.2025.
//

import UIKit

class CardSelectionVc: UIViewController {
    
    @IBOutlet var cardImageView: UIImageView!
    
    @IBOutlet var buttons      : [UIView]!
    
    var cards : [UIImage] = Card.allValues
    
    var timer : Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad ()
        startTimer()
        for button in buttons {
            button.layer.cornerRadius = 8
        }
        func startTimer() {
            timer = Timer.scheduledTimer(timeInterval: 0.5, target:self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
        }
       
            
        }
    @objc func showRandomImage(){
        cardImageView.image = cards.randomElement() ?? UIImage(named: "KH")

       
    }
    
    @IBAction func stopButtunTapped(_ sender: Any) {
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
    }
    @IBAction func rulesButtonTapped(_ sender: Any) {
    }
    
    

}
