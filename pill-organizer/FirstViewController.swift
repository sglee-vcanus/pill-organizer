//
//  FirstViewController.swift
//  pill-organizer
//
//  Created by sglee on 04/03/2019.
//  Copyright © 2019 sglee. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var currTableView: UITableView!
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(tableView == self.currTableView) {
            return currSsidArray.count
        } else {
            return ssidArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(tableView == self.currTableView) {
            let cell = UITableViewCell(
                style: UITableViewCell.CellStyle.subtitle,
                reuseIdentifier: "currTableView")
            cell.textLabel?.text = currSsidArray[indexPath.row]
            return cell
        } else {
            let cell = UITableViewCell(
                style: UITableViewCell.CellStyle.subtitle,
                reuseIdentifier: "tableView")
            cell.textLabel?.text = ssidArray[indexPath.row]
            return cell
        }
    }
    

    var ssidArray:[String] = []
    var currSsidArray:[String] = []
    
    override func viewDidLoad() {
        var networkArray:[String] = []
        networkArray.append("ABC")
        networkArray.append("123")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for ssid in networkArray {
            ssidArray.append(ssid as String)
        }
        
        currSsidArray.append("Network")
        currSsidArray.append("CCC" as String)

    }

}

