import Foundation
import UIKit

protocol SendDelegate {
    func userPressedSend(data: String)
    
}

class SecondViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    
    var delegate: SendDelegate? = nil
    
    @IBAction func sendButton(_ sender: AnyObject) {
        if delegate != nil {
            if textField.text != nil {
                let data = textField.text
                
                delegate?.userPressedSend(data: data!)
                dismiss(animated: true, completion: nil)
            }
            
        }
    }
    
}

