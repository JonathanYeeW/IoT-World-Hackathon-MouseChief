//
//  OtherVC.swift
//  MouseChiefv2
//
//  Created by Jonathan Yee on 5/17/18.
//  Copyright © 2018 Jonathan Yee. All rights reserved.
//

import UIKit

class OtherVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dateManager = DateFormatter()
        dateManager.dateStyle = .none
        dateManager.timeStyle = .short
        let theDate = Date()
        timeLabel.text = dateManager.string(from: theDate)
        let randomNumber = Int(arc4random_uniform(1000))
        trapNumberLabel.text = "Trap: \(String(randomNumber))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Variables
    //Outlets
    
    @IBOutlet weak var trapNumberLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var mouseView: UIView!
    //Functions
    
    
}//End Class
