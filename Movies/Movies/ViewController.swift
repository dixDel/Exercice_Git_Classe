//
//  ViewController.swift
//  Movies
//
//  Created by student5310 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var movieTableView: UITableView!
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var searchTextView: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableview()
    }

    func setupTableview (){
       
        movieTableView.delegate = self
        movieTableView.dataSource = self
        movieTableView.register(UINib(nibName: "MovieCell", bundle: nil), forCellReuseIdentifier: "movieCellID")
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieCell = movieTableView.dequeueReusableCell(withIdentifier: "movieCellID", for: indexPath) as! MovieCell
        
        return movieCell
    }
    
    
}
