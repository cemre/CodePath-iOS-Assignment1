//
//  DetailViewController.swift
//  Assignment1
//
//  Created by Cemre Güngör on 10/19/14.
//  Copyright (c) 2014 cemre. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    var isFavorite: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isFavorite = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func favorite(sender: AnyObject) {
        if(isFavorite!) {
            favoriteButton.tintColor = UIColor(white: 0.5, alpha: 1)
            isFavorite = false
        } else {
            favoriteButton.tintColor = UIColor(red: 0.345, green: 0.564, blue: 1, alpha: 1)
            isFavorite = true
        }

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
