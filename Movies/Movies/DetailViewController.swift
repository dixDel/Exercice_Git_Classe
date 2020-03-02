//
//  DetailViewController.swift
//  Movies
//
//  Created by student5306 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var btSafari: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func onTapOpenSafari(_ sender: Any) {
       guard let url = URL(string: "https://www.google.com") else { return }
       UIApplication.shared.open(url)
    }
    

}
