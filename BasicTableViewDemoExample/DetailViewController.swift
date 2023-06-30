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
}
