//
//  UKSocSci2ViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 30.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class UKSocSci2ViewController: UIViewController {

    @IBOutlet weak var LSE: UIButton!
    @IBOutlet weak var UCL: UIButton!
    @IBOutlet weak var Warwick: UIButton!
    @IBOutlet weak var Manchester: UIButton!
    @IBOutlet weak var KingsCollege: UIButton!
    @IBOutlet weak var Imperial: UIButton!
    @IBOutlet weak var Edinburgh: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
    }
    @IBAction func toEdinburgh(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "edinburgh_vc") as! EdinburghViewController
        present(vc, animated: true)
    }
    @IBAction func toImperial(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "imperial_vc") as! ImperialViewController
        present(vc, animated: true)
    }
    @IBAction func toKings(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "kingscollege_vc") as! KingsCollegeViewController
        present(vc, animated: true)
    }
    @IBAction func toManchester(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "manchester_vc") as! ManchesterViewController
        present(vc, animated: true)
    }
    @IBAction func toWarwick(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "warwick_vc") as! WarwickViewController
        present(vc, animated: true)
    }
    @IBAction func toUCL(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ucl_vc") as! UCLViewController
        present(vc, animated: true)
    }
    @IBAction func toLSE(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "LSE_vc") as! LSEViewController
        present(vc, animated: true)
    }
}
