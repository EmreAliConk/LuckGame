//
//  CardSelectionVc.swift
//  LuckGame
//
//  Created by Emre Ali Cönk on 1.03.2025.
//

import UIKit

class CardSelectionVc: UIViewController {
    
    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    var cards : [UIImage] = Card.allValues
    var timer : Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad ()
        
        
        startTimer()
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        timer.invalidate()
    }
    
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target:self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    
    @objc func showRandomImage(){
        cardImageView.image = cards.randomElement() ?? UIImage(named: "KH")
    }
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
    
}
    
   
        
        
    
    
   
        
        
    
    
  
    
    


