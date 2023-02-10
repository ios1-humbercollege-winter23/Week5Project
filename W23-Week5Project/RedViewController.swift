//
//  RedViewController.swift
//  W23-Week5Project
//
//  Created by Rania Arbash on 2023-02-10.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func alertClicked(_ sender: Any) {
       
        let alert = UIAlertController(title: "Save To DB..", message: "Are you sure you want to save this ?", preferredStyle: .alert)
        
        
        var myFirstClouser = {(action : UIAlertAction) -> Void in {
            print("save button clicked")

        }()
        }

        let saveAction = UIAlertAction(title: "save", style: .default, handler: myFirstClouser)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)

        
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
        
    }
    
    @IBAction func actionSheetClicked(_ sender: Any) {
        print((sender as! UIButton).titleLabel?.text)
        
        var actionSheet = UIAlertController(title: "Save To DB..", message: "Are you sure you want to save this ?", preferredStyle: .actionSheet)
         
        
        var saveAction = UIAlertAction(title: "Save", style: .default)
        var cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        var deleteAction = UIAlertAction(title: "Delete", style: .destructive)

        
        actionSheet.addAction(saveAction)
        actionSheet.addAction(cancelAction)
        actionSheet.addAction(deleteAction)

        
         present(actionSheet, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
