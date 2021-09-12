//
//  OkullarViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 14.07.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class OkullarViewController: UIViewController {

    @IBOutlet weak var MITButton: UIButton!
    @IBOutlet weak var StanfordButton: UIButton!
    @IBOutlet weak var BerkeleyButton: UIButton!
    @IBOutlet weak var HarvardButton: UIButton!
    @IBOutlet weak var GeorgiaTechButton: UIButton!
    @IBOutlet weak var CaltechButton: UIButton!
    @IBOutlet weak var CarnegieButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)


    }
    @IBAction func toCarnegie(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "carnegiemellon_vc") as! CarnegieMellonViewController
        present(vc, animated: true)
    }
    @IBAction func toCaltech(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "caltech_vc") as! CaltechViewController
        present(vc, animated: true)
    }
    @IBAction func toGeorgia(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "georgiatech_vc") as! GeorgiaTechViewController
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
    @IBAction func MITGeç(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "mit_vc") as! MITViewController
        present(vc, animated: true)
    }
    
    @IBAction func StanfordGeç(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "stanford_vc") as! StanfordViewController
        present(vc, animated: true)
    }
}
