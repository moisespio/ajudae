//
//  ViewController.swift
//  ajudae
//
//  Created by Moisés Pio on 11/5/15.
//  Copyright © 2015 Moisés Pio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MainTableViewCell
        
        switch indexPath.row {
            case 0 :
                cell.backgroundColor = UIColor.redColor()
            break
            case 1 :
                cell.backgroundColor = UIColor.blackColor()
            break
            case 2 :
                cell.backgroundColor = UIColor.greenColor()
            break
            case 3 :
                cell.backgroundColor = UIColor.blueColor()
            break
            default :
            
            break
        }
        
        return cell
    }
}
