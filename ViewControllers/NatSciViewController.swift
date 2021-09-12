//
//  NatSciViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 21.07.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class NatSciViewController: UIViewController {

    @IBOutlet weak var MITButton: UIButton!
    @IBOutlet weak var HarvardButton: UIButton!
    @IBOutlet weak var StanfordButton: UIButton!
    @IBOutlet weak var CaltechButton: UIButton!
    @IBOutlet weak var BerkeleyButton: UIButton!
    @IBOutlet weak var PrincetonButton: UIButton!
    @IBOutlet weak var ChicagoButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
    }
    @IBAction func toChicago(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "uchicago_vc") as! UChicagoViewController
        present(vc, animated: true)
    }
    @IBAction func toPrinceton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "princeton_vc") as! PrincetonViewController
        present(vc, animated: true)
    }
    @IBAction func toBerkeley(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "berkeley_vc") as! BerkeleyViewController
        present(vc, animated: true)
    }
    @IBAction func toCaltech(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "caltech_vc") as! CaltechViewController
        present(vc, animated: true)
    }
    @IBAction func toStanford(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "stanford_vc") as! StanfordViewController
        present(vc, animated: true)
    }
    @IBAction func toHarvard(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "harvard_vc") as! HarvardViewController
        present(vc, animated: true)
    }
    @IBAction func toMIT(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "mit_vc") as! MITViewController
        present(vc, animated: true)
    }
}
