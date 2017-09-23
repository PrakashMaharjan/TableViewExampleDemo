//
//  DetailViewController.swift
//  BasicTableViewDemo
//
//  Created by prakash Maharjan on 9/23/17.
//  Copyright © 2017 Prakash Maharjan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var titleText :  String?
    var subtitleText:  String?
    var imageName : String?
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailTItleLabel: UILabel!

    
    @IBOutlet weak var detailSubTitlelabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.detailTItleLabel.text = titleText
        self.detailSubTitlelabel.text = subtitleText
        self.detailImageView.image = UIImage(named: imageName!)
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
