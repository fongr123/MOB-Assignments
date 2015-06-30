//
//  StudentProfileViewController.swift
//  Homework2
//
//  Created by Kannan Chandrasegaran on 25/6/15.
//  Copyright (c) 2015 Kannan Chandrasegaran. All rights reserved.
//

import UIKit

class StudentProfileViewController: UIViewController {

  var student:Student = Student()

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var surName: UILabel!
  
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var avgGPA: UILabel!
    
   
    @IBOutlet weak var phone: UILabel!
    
    @IBOutlet weak var profilePic: UIImageView!

    var studentGPA = 0

    
    
// This function finds the average Score of a list of Ints
    func averageScore(Scores: [Int]) -> Int {
        return sumNumbers(Scores)/Scores.count
    }
    
    
 // This function sums the numbers in a List of Ints
    func sumNumbers(Scores: [Int]) -> Int {
        var sum = 0
        for numbers in Scores {
            sum += numbers
        }
        return sum
    }
    
// This function copied and pasted from the internet allows me to load an image from a URL 
    
    func load_image(urlString:String)
    {
        
        var imgURL: NSURL = NSURL(string: urlString)!
        let request: NSURLRequest = NSURLRequest(URL: imgURL)
        NSURLConnection.sendAsynchronousRequest(
            request, queue: NSOperationQueue.mainQueue(),
            completionHandler: {(response: NSURLResponse!,data: NSData!,error: NSError!) -> Void in
                if error == nil {
                    self.profilePic.image = UIImage(data: data)
                }
        })
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name.text = student.firstName
        surName.text = student.lastName
        age.text = String(student.age)
        avgGPA.text = String(studentGPA)
        if let phoneNumber = student.phoneNumber {
            phone.text = String(phoneNumber)
        }
        
        load_image(student.profilePicURL)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
