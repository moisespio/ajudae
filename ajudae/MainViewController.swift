//
//  ViewController.swift
//  ajudae
//
//  Created by Moisés Pio on 11/5/15.
//  Copyright © 2015 Moisés Pio. All rights reserved.
//

import UIKit
import Parse

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
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return self.tableView.frame.height/4 - (self.navigationController?.navigationBar.frame.height)!/4 + 11
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MainTableViewCell
        
        switch indexPath.row {
            case 0 :
                cell.labelTitle.text = "Doações"
                cell.labelDescription.text = "Mais de 450 itens para doação"
                cell.backgroundColor = UIColor.rosa
                cell.imageIcon.image = UIImage(named: "HomeIcon1")
            break
            case 1 :
                cell.labelTitle.text = "Histórias"
                cell.labelDescription.text = "Mais de 100 histórias, ajude"
                cell.backgroundColor = UIColor.laranja
                cell.imageIcon.image = UIImage(named: "HomeIcon2")
            break
            case 2 :
                cell.labelTitle.text = "Quero doar"
                cell.labelDescription.text = "Ajude alguém, Desapegue"
                cell.backgroundColor = UIColor.azul
                cell.imageIcon.image = UIImage(named: "HomeIcon3")
            break
            case 3 :
                cell.labelTitle.text = "Criar história"
                cell.labelDescription.text = "Ajude a mudar a vida de uma pessoa"
                cell.backgroundColor = UIColor.azulbebe
                cell.imageIcon.image = UIImage(named: "HomeIcon4")
            break
            default :
            
            break
        }
        
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row {
        case 0 :
            self.performSegueWithIdentifier("donations", sender: nil)
            break
        case 1 :
            self.performSegueWithIdentifier("stories", sender: nil)
            break
        case 2 :
            self.performSegueWithIdentifier("donations", sender: nil)
            break
        case 3 :
            self.performSegueWithIdentifier("donations", sender: nil)
            break
        default :
            
            break
        }
    }
}

