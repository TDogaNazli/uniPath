//
//  SocSci2ViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 27.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class SocSci2ViewController: UIViewController {

    @IBOutlet weak var NYU: UIButton!
    @IBOutlet weak var UChicago: UIButton!
    @IBOutlet weak var Northwestern: UIButton!
    @IBOutlet weak var Michigan: UIButton!
    @IBOutlet weak var Duke: UIButton!
    @IBOutlet weak var Wisconsin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
    }
    @IBOutlet weak var Texas: UIButton!
    @IBAction func toWisconsin(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "wisconsin_vc") as! WisconsinViewController
        present(vc, animated: true)
    }
    @IBAction func toTexas(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "texas_vc") as! TexasViewController
        present(vc, animated: true)
    }
    @IBAction func toDuke(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "duke_vc") as! DukeViewController
        present(vc, animated: true)
    }
    @IBAction func toMichigan(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "michigan_vc") as! MichiganViewController
        present(vc, animated: true)
    }
    @IBAction func toNorthwestern(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "northwestern_vc") as! NorthwesternViewController
        present(vc, animated: true)
    }
    @IBAction func toUChicago(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "uchicago_vc") as! UChicagoViewController
        present(vc, animated: true)
    }
    @IBAction func toNYU(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "nyu_vc") as! NYUViewController
        present(vc, animated: true)
    }
}
