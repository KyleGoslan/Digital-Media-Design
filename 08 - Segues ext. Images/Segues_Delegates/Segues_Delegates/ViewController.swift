import Foundation
import UIKit

class ViewController: UIViewController, SendDelegate {

  @IBOutlet weak var newImage: UIImageView!  
  
  func userPressedSend(data: UIImage) {
        newImage.image = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC" {
            let SecondViewController: SecondViewController = segue.destination as! SecondViewController
            SecondViewController.delegate = self
            
        }
    }

}

