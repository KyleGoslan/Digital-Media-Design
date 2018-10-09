import Foundation
import UIKit

class ViewController: UIViewController, SendDelegate {

    @IBOutlet var newMessage: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userPressedSend(data: String) {
        newMessage.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecondVC" {
            let SecondViewController: SecondViewController = segue.destination as! SecondViewController
            SecondViewController.delegate = self
            
        }
    }

}

