//
//  FinalVC.swift
//  MouseChiefv2
//
//  Created by Jonathan Yee on 5/17/18.
//  Copyright © 2018 Jonathan Yee. All rights reserved.
//

import UIKit

class FinalVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touching me")
        self.navigationController?.popToRootViewController(animated: true)
    }

    //Variables
    //Outlets
    @IBOutlet weak var mouseView: UIView!
    //Functions

}//End Class
