//
//  FilesViewController.swift
//  Assignment1
//
//  Created by Cemre Güngör on 10/19/14.
//  Copyright (c) 2014 cemre. All rights reserved.
//

import UIKit

class FilesViewController: UIViewController {
    var isLoggedIn: Boolean!
    

    @IBOutlet weak var empty: UIImageView!
    @IBOutlet weak var existing: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        existing.hidden = true
        empty.hidden = true
        
        var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        var signedIn = appDelegate.signedIn
        
        if (signedIn! == true) {
            existing.hidden = false
        } else {
            empty.hidden = false
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var destinationViewController = segue.destinationViewController as DetailViewController
        
        destinationViewController.hidesBottomBarWhenPushed = true
    }


}
