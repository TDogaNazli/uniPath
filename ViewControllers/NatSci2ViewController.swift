//
//  NatSci2ViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 27.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class NatSci2ViewController: UIViewController {

    @IBOutlet weak var UCLA: UIButton!
    @IBOutlet weak var Illinois: UIButton!
    @IBOutlet weak var Texas: UIButton!
    @IBOutlet weak var SanDiego: UIButton!
    @IBOutlet weak var Northwestern: UIButton!
    @IBOutlet weak var Michigan: UIButton!
    @IBOutlet weak var Washington: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
    }
    @IBAction func toWashington(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "washington_vc") as! WashingtonViewController
        present(vc, animated: true)
    }
    @IBAction func toNorthwestern(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "northwestern_vc") as! NorthwesternViewController
        present(vc, animated: true)
    }
    @IBAction func toMichigan(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "michigan_vc") as! MichiganViewController
        present(vc, animated: true)
    }
    @IBAction func toSanDiego(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "sandiego_vc") as! SanDiegoViewController
        present(vc, animated: true)
    }
    @IBAction func toTexas(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "texas_vc") as! TexasViewController
        present(vc, animated: true)
    }
    @IBAction func toIllinois(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "illinois_vc") as! IllinoisViewController
        present(vc, animated: true)
    }
    @IBAction func toUCLA(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ucla_vc") as! UCLAViewController
        present(vc, animated: true)
    }
}
