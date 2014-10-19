//
//  WelcomeViewController.swift
//  Assignment1
//
//  Created by Cemre Güngör on 10/19/14.
//  Copyright (c) 2014 cemre. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: AnyObject) {
        var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        appDelegate.signedIn = true
    }

    @IBAction func signUp(sender: AnyObject) {
        var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        appDelegate.signedIn = false

    }
    
    @IBAction func swipe(sender: AnyObject) {
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
