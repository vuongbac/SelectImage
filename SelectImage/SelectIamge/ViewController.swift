//
//  ViewController.swift
//  SelectImage
//
//  Created by BAC Vuong Toan (VTI.Intern) on 9/18/20.
//  Copyright © 2020 BAC Vuong Toan (VTI.Intern). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var avatar: UIImageView!
    var ImagePicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        ImagePicker.delegate = self
    }
    
    @IBAction func btnClick(_ sender: Any) {
        ImagePicker.allowsEditing = false
        ImagePicker.sourceType = .photoLibrary
        // sourcetype = .camera
        // sourcetype = .savedPhotosAlbum
        // sourceType = .photoLibrary
        
        self.present(ImagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            avatar.contentMode = .scaleAspectFit
            avatar.image = pickedImage
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    
}


extension ViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
}

