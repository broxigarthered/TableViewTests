//
//  ReusableTableViewController.swift
//  TableViewTests
//
//  Created by Adelina Dutskinova on 15.12.18.
//  Copyright © 2018 Adelina Dutskinova. All rights reserved.
//

import UIKit

class ReusableTableViewController: UIViewController {
    
    var controllerNameText: String = ""
    
    @IBOutlet weak var controllerName: UILabel!
    @IBOutlet weak var reusableTableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.controllerName.text = controllerNameText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.reusableTableView.dataSource = self
        self.reusableTableView.delegate = self
        
        
        let nib = UINib.init(nibName: "FirstCellTableViewCell", bundle: nil)
        self.reusableTableView.register(nib, forCellReuseIdentifier: "MyCustomCell")
        
        self.reusableTableView.register(UINib.init(nibName: "SecondCell", bundle: nil), forCellReuseIdentifier: "MyCustomCell")
        
        /* TODO:
         Create class that loads tableviewCells
         */
    }
    
    @IBAction func unwind(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

extension ReusableTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = self.reusableTableView.dequeueReusableCell(withIdentifier: "MyCustomCell")
        let cell = self.reusableTableView.dequeueReusableCell(withIdentifier: "MyCustomCell", for: indexPath)
        
        return cell
    }
    
}
