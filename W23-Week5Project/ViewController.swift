//
//  ViewController.swift
//  W23-Week5Project
//
//  Created by Rania Arbash on 2023-02-10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeBG(_ sender: Any) {
        self.view.backgroundColor = UIColor(named: "Blue")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "togreen"{
        
            let greenVC  = segue.destination as! GreenViewController
       
        if let goodValue = nameField.text  {
            if goodValue.count == 0 {
                greenVC.nameFromFirstVC = "No Name entered"
            }
        }
        
        }
        else if segue.identifier == "tored" {
           var redVC = segue.destination as! RedViewController
            
        }
        
    }
    
}

