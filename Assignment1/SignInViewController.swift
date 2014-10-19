//
//  SignInViewController.swift
//  Assignment1
//
//  Created by Cemre Güngör on 10/19/14.
//  Copyright (c) 2014 cemre. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBAction func backButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!) {
        
        var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        appDelegate.signedIn = true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
