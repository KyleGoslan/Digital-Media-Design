import Foundation
import UIKit

protocol SendDelegate {
    func userPressedSend(data: UIImage)
}

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
  @IBOutlet weak var imageSelected: UIImageView!
  
  @IBAction func importButton(_ sender: Any) {
    let image = UIImagePickerController()
    image.delegate = self

    if UIImagePickerController.isSourceTypeAvailable(.camera) {
      image.sourceType = .camera
      self.present(image, animated: true, completion: nil)
      } else {
       print("camera not available")
      }

    image.sourceType = UIImagePickerController.SourceType.photoLibrary
    image.allowsEditing = false

    self.present(image, animated: true){

    }
  }

  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
      imageSelected.image = image
    } else {
        //error
    }
    self.dismiss(animated: true, completion: nil)
  }
  
  var delegate: SendDelegate? = nil
    
    @IBAction func sendButton(_ sender: AnyObject) {
        if delegate != nil {
          if imageSelected.image != nil {
                let data = imageSelected.image
                
                delegate?.userPressedSend(data: data!)
                dismiss(animated: true, completion: nil)
            }
            
        }
    }
    
}


