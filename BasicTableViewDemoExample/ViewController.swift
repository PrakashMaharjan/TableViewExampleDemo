//
//  ViewController.swift
//  BasicTableViewDemo
//
//  Created by prakash Maharjan on 9/23/17.
//  Copyright © 2017 Prakash Maharjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    var countriesArray = NSArray()
    var continentArray = NSArray()
    var imagesArray = NSArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.countriesArray = ["USA", "Brazil", "Germany", "Nepal", "South Africa", "Australia"]
        self.continentArray = ["North America", "South America", "Europe", "Nepal", "Africa", "Australia"]
        self.imagesArray = ["USA.png", "Brazil.png", "Germany.png", "Nepal.png", "South Africa.png", "Australia.png"]
    }

    
    // MARK : UITableView Data Sources
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 20
        return self.countriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    /*
        // configuring basic default UITableCell
        let myCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "myIdentifier")
        // set text value data to textLabel
        myCell.textLabel?.text = "hello world"
        myCell.detailTextLabel?.text = "hello swift"
        myCell.imageView?.image = UIImage(named: "USA.png")
        
        myCell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        myCell.selectionStyle = UITableViewCellSelectionStyle.default
        
        tableView.separatorStyle = UITableViewCellSeparatorStyle.singleLine
        
        return myCell
 */
        
        // instantiate custom cell with identifier
        let myCustomCell:MyCustomTableViewCell = self.myTableView.dequeueReusableCell(withIdentifier: "MyCustomTableViewCell") as! MyCustomTableViewCell
        
        //set data to custom cell label and images
        //myCustomCell.myTitleLable.text = "HELLO WORLD"
        myCustomCell.myTitleLable.text = self.countriesArray.object(at: indexPath.row) as? String
        //myCustomCell.myDetailTitleLabel.text = "HELLOW SWIFT"
        myCustomCell.myDetailTitleLabel.text = self.continentArray.object(at: indexPath.row) as? String
        //myCustomCell.myCustomImageView.image = UIImage(named:"USA.png")
        
        myCustomCell.myCustomImageView.image = UIImage(named:(self.imagesArray.object(at: indexPath.row) as? String)!)
        
        return myCustomCell
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC:DetailViewController =  storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.titleText = self.countriesArray.object(at: indexPath.row) as? String
        detailVC.subtitleText = self.continentArray.object(at: indexPath.row) as? String
        detailVC.imageName = self.imagesArray.object(at: indexPath.row) as? String
        self.navigationController?.pushViewController(detailVC, animated: true)
   
        
    }
    
  

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

