
import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var numberInput: UITextField!
    

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isEvenButton(sender: AnyObject) {
        
        if isEvenTest (numberInput.text.toInt()!) {
            resultLabel.text = "is even"
        }
        else {
            resultLabel.text = "is not even"
        }
    }
    
   // This function calculates whether a number is even or not and returns as boolean of true or false.
    func isEvenTest (number: Int)->Bool {
        if (number % 2 == 0) {
            return true
        }
        else {
            return false
        
        }
    }
    
  /*
  TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
  
  */
}