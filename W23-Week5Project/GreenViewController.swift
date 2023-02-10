//
//  GreenViewController.swift
//  W23-Week5Project
//
//  Created by Rania Arbash on 2023-02-10.
//

import UIKit

class GreenViewController: UIViewController ,
                           UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var nameText: UILabel!
    var nameFromFirstVC : String = ""
    
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        nameText.text = "Welcome \(nameFromFirstVC)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToMain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        }
    
    @IBAction func tackAphotoClicked(_ sender: Any) {
        let imageController = UIImagePickerController()
        imageController.delegate = self
        
        imageController.sourceType = UIImagePickerController.isSourceTypeAvailable(.camera) ? .camera : .photoLibrary
        
        present(imageController, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        let imageFromController = info[.originalImage] as? UIImage
        image.image = imageFromController
        
        dismiss(animated: true, completion: nil)
    }

   
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        
        dismiss(animated: true, completion: nil)
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
