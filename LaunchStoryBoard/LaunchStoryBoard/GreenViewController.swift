//
//  GreenViewController.swift
//  LaunchStoryBoard
//
//  Created by Gabriel Trabanco Llano on 29/11/15.
//  Copyright © 2015 Gabriel Trabanco Llano. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
    //MARK: - Actions
    @IBAction func tappedOnBlue(sender: AnyObject) {
        print("Go to Blue")
    }
    
    //MARK: - Scene Transitions
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //Guess which segue is
        if segue.identifier == "seguefromgreentoblue" {
            
            //Show the Blue VC
            //Update it before to show itself the model
            //segue.destinationViewController.title = "Bluralize your life" // Cast not needed for this
            
            //To update the var name we have to make a cast
            var destVC = segue.destinationViewController as? BlueViewController
            destVC?.name = "Royal Blue"
            
        } else {
            print("Unknown segue")
        }
    }
    
    //MARK: - Unwind Segue
    @IBAction func goAway(segue: UIStoryboardSegue) {
        print("Fuck off!")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Green life"

        // Do any additional setup after loading the view.
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
