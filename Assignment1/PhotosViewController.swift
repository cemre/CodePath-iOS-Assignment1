//
//  PhotosViewController.swift
//  Assignment1
//
//  Created by Cemre Güngör on 10/19/14.
//  Copyright (c) 2014 cemre. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    @IBOutlet weak var empty: UIImageView!
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scroll.hidden = true
        empty.hidden = true

        scroll.contentSize = CGSize(width: 320, height: image.frame.size.height + 64 + 40)
        
        var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        var signedIn = appDelegate.signedIn
        
        if (signedIn! == true) {
            scroll.hidden = false
        } else {
            empty.hidden = false
        }

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
