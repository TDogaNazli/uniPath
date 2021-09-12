//
//  HumanitiesViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 21.07.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class HumanitiesViewController: UIViewController {
    
    @IBOutlet weak var HarvardButton: UIButton!
    @IBOutlet weak var BerkeleyButton: UIButton!
    @IBOutlet weak var StanfordButton: UIButton!
    @IBOutlet weak var YaleButton: UIButton!
    @IBOutlet weak var NYUButton: UIButton!
    @IBOutlet weak var UCLAButton: UIButton!
    @IBOutlet weak var PrincetonButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)

    }
    @IBAction func toPrinceton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "princeton_vc") as! PrincetonViewController
        present(vc, animated: true)
    }
    @IBAction func toUCLA(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ucla_vc") as! UCLAViewController
        present(vc, animated: true)
    }
    @IBAction func toNYU(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "nyu_vc") as! NYUViewController
        present(vc, animated: true)
    }
    @IBAction func toYale(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "yale_vc") as! YaleViewController
        present(vc, animated: true)
    }
    @IBAction func toHarvard(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "harvard_vc") as! HarvardViewController
        present(vc, animated: true)
    }
    @IBAction func toBerkeley(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "berkeley_vc") as! BerkeleyViewController
        present(vc, animated: true)
    }
    @IBAction func toStanford(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "stanford_vc") as! StanfordViewController
        present(vc, animated: true)
    }
    
    
}
