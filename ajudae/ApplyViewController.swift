//
//  ApplyViewController.swift
//  ajudae
//
//  Created by Moisés Pio on 11/6/15.
//  Copyright © 2015 Moisés Pio. All rights reserved.
//

import UIKit

class ApplyViewController: UIViewController {
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var labelCity: UILabel!
    @IBOutlet weak var textViewMessage: UITextView!
    @IBOutlet weak var buttonSend: UIButton!
    @IBOutlet weak var labelItemTitle: UILabel!
    @IBOutlet weak var labelItemDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.buttonSend.layer.cornerRadius = 4
        self.buttonSend.clipsToBounds = true
        self.textViewMessage.layer.cornerRadius = 4
        self.textViewMessage.clipsToBounds = true
        self.imageProfile.layer.cornerRadius = self.imageProfile.frame.width/2
        self.imageProfile.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}