//
//  ViewController.swift
//  TableViewTests
//
//  Created by Adelina Dutskinova on 15.12.18.
//  Copyright © 2018 Adelina Dutskinova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var mainScreenName: MainScreens = .Default

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showMobileDashboard(_ sender: Any) {
        self.mainScreenName = .MobileDashboard
        self.performSegue(withIdentifier: "showTableView", sender: self)
    }
    
    @IBAction func showCurrentBillDashboard(_ sender: Any) {
        self.mainScreenName = .CurrentBillDashboard
        self.performSegue(withIdentifier: "showTableView", sender: self)
    }
    
    @IBAction func showHybridDashboard(_ sender: Any) {
        self.mainScreenName = .HybridDashboard
        self.performSegue(withIdentifier: "showTableView", sender: self)
    }
    
    @IBAction func showNetBoxDashboard(_ sender: Any) {
        self.mainScreenName = .NetBoxDashboard
        self.performSegue(withIdentifier: "showTableView", sender: self)
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTableView" {
            if let destinationViewController = segue.destination as? ReusableTableViewController {
                destinationViewController.controllerNameText = mainScreenName.rawValue
            }
        }
    }
    
}

public enum MainScreens: String {
    case MobileDashboard = "Mobile Dashboard"
    case CurrentBillDashboard = "CurrentBill Dashboard"
    case HybridDashboard = "Hybrid Dashboard"
    case NetBoxDashboard = "Netbox Dashboard"
    case Default = "No ViewController Name"
    
    init(){self = .Default}
}

