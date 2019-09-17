//
//  PackageDetailsViewController.swift
//  Realm Test App
//
//  Created by Javier González Ovalle on 9/17/19.
//  Copyright © 2019 Javier González Ovalle. All rights reserved.
//

import UIKit
import CoreServices

class PackageDetailsViewController: UIViewController {
    
    @IBOutlet weak var importedImageView: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func selectPhoto(from imageSourceType: UIImagePickerController.SourceType) {
        imagePicker.sourceType = imageSourceType
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        
        if let types = UIImagePickerController.availableMediaTypes(for: imageSourceType) {
            types.map { item in
                //print("🥑 \(item)")
                switch item {
                case String(kUTTypeMovie):
                    print("📹 \(item)")
                case String(kUTTypeImage):
                    print("🖼 \(item)")
                default:
                    print("❓other: \(item)")
                }
            }
        }
        imagePicker.mediaTypes = [String(kUTTypeMovie)]
        present(imagePicker, animated: true) {
            print("🥑 image picker presented")
        }
    }
    //MARK: Interface Builder Actions
    @IBAction func photoLibraryButtonAction(_ sender: UIButton) {
        selectPhoto(from: .photoLibrary)
    }
    
    @IBAction func cameraButtonAction(_ sender: UIButton) {
        if isCameraAccessGranted() {
            selectPhoto(from: .camera)
        } else {
            requestCameraAccess()            
        }
    }
    
    @IBAction func savedPhotosButtonAction(_ sender: UIButton) {
        selectPhoto(from: .savedPhotosAlbum)
    }
    
    // MARK: Camera permission
    func isCameraAccessGranted() -> Bool {
        return true
    }
    
    func requestCameraAccess() {
        print("🥑 request Camera Access")
    }
}

extension PackageDetailsViewController: UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaURL = info[UIImagePickerController.InfoKey.mediaURL]
        let imageURL = info[UIImagePickerController.InfoKey.imageURL]
        print("🥑 photo: " + String(describing:mediaURL) + String(describing:imageURL))
        if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            importedImageView.image = originalImage
        }
        picker.dismiss(animated: true) {
            print("🥑 dimiss picker cntroller")
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("🥑 user cancelled")
        picker.dismiss(animated: true) {
            print("🥑 picker dismissed by cancel")
        }
    }
}

extension PackageDetailsViewController: UINavigationControllerDelegate {
    
}
