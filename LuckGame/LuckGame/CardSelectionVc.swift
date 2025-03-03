//
//  CardSelectionVc.swift
//  LuckGame
//
//  Created by Emre Ali Cönk on 1.03.2025.
//

import UIKit

class CardSelectionVc: UIViewController           {
    
    @IBOutlet var cardImageView: UIView!
    @IBOutlet var buttons      : [UIView]!
    
    override func viewDidLoad()                   {
        super.viewDidLoad    ()
         
        for button in buttons                     {
            button.layer.cornerRadius = 8
        }

       
    }
    
    @IBAction func stopButtunTapped(_ sender: Any) {
    }
    

}
