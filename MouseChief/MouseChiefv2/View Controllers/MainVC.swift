//
//  MainVC.swift
//  MouseChiefv2
//
//  Created by Jonathan Yee on 5/17/18.
//  Copyright © 2018 Jonathan Yee. All rights reserved.
//

import UIKit
import FirebaseDatabase

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("## viewDidLoad ##")
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        //MARK: Create Dummy Data
        dbReference = Database.database().reference()
        
        //MARK: Creates an observable that fires when a child is added
        dbHandle = dbReference?.child("name").observe(.childAdded, with: {(snapshot) in
            let name: String? = snapshot.value as? String
            print("Data Retrieved!!! \(name)")
        })
    }//End viewDidLoad()
    
    override func viewWillAppear(_ animated: Bool) {
        print("## viewWillAppear ##")
        self.mouseView.backgroundColor = UIColor.black
    }//End viewWillAppear()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Variables
    var dbReference: DatabaseReference?
    var dbHandle: DatabaseHandle?
    
    //Outlets
    @IBOutlet weak var mouseView: UIView!
    
    @IBAction func demoTriggerButtonPressed(_ sender: UIButton) {
        //MARK: Create Dummy Data
        dbReference?.child("name").childByAutoId().setValue("Mouse Caught!")
        self.mouseView.backgroundColor = UIColor.red
    }
    
    //Functions
    
}//End Class
