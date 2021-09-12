//
//  SecondViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 7.07.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var liseliyimButton: UIButton!
    @IBOutlet weak var üniButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapButton(_ sender: Any) {
        let vc2 = storyboard?.instantiateViewController(identifier: "lise_vc") as! liseViewController
        present(vc2, animated: true)
    }
}
