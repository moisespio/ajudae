//
//  DonationsViewController.swift
//  ajudae
//
//  Created by Moisés Pio on 11/6/15.
//  Copyright © 2015 Moisés Pio. All rights reserved.
//

import UIKit
import Kingfisher

class DonationsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!

    var donations : [Donation] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        getDonations()
    }
    
    func getDonations() {
        let donation = Donation()
        
        donation.getDonations(nil) { (donations, error) -> () in
            if donations.count > 0 {
                self.donations += donations
                self.updateTableView()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        let nav = self.navigationController?.navigationBar
        
        nav?.barTintColor = UIColor.rosa
        nav?.tintColor = UIColor.whiteColor()
        nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }

    func updateTableView() {
        collectionView.reloadData()
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.donations.count
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake((self.view.frame.size.width - (16 * 3)) / 2, 130)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 16
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("segueApplyForDonation", sender: self.donations[indexPath.row])
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! DonationsCollectionViewCell

        let donation = donations[indexPath.row]

        cell.labelTitle.text = donation.title

        if let photo = donation.image,
            _url = photo.url {
                let url = NSURL(string: _url)
                cell.imageDonation.kf_setImageWithURL(url!, placeholderImage: UIImage(named: "placeholder"))
        }

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segueApplyForDonation" {
            let pVC = segue.destinationViewController as! DonationDetailsViewController
            pVC.donation = sender as? Donation
        }
    }
    
    @IBAction func unwindSegueFromApplyToDonations(segue: UIStoryboardSegue){
    }
}
