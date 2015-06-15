
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var numberInput: UITextField!
    
    var sum: Int = 0
    
    @IBAction func addNumbers(sender: AnyObject) {
        
        sum = sum + numberInput.text.toInt()!
        numberLabel.text = String(sum)
        
    }
  
  //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}
