//
//  CNatSciViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 30.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class CNatSciViewController: UIViewController {

    @IBOutlet weak var Toronto: UIButton!
    @IBOutlet weak var BC: UIButton!
    @IBOutlet weak var McGill: UIButton!
    @IBOutlet weak var Waterloo: UIButton!
    @IBOutlet weak var Alberta: UIButton!
    @IBOutlet weak var Montreal: UIButton!
    @IBOutlet weak var McMaster: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
    }
    @IBAction func toMcMaster(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "mcmaster_vc") as! McMasterViewController
        present(vc, animated: true)
    }
    @IBAction func toMontreal(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "montreal_vc") as! MontrealViewController
        present(vc, animated: true)
    }
    @IBAction func toAlberta(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "alberta_vc") as! AlbertaViewController
        present(vc, animated: true)
    }
    @IBAction func toWaterloo(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "waterloo_vc") as! WaterlooViewController
        present(vc, animated: true)
    }
    @IBAction func toMcGill(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "mcgill_vc") as! McGillViewController
        present(vc, animated: true)
    }
    @IBAction func toBC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "britishcolumbia_vc") as! BritishColumbiaViewController
        present(vc, animated: true)
    }
    @IBAction func toToronto(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "toronto_vc") as! TorontoViewController
        present(vc, animated: true)
    }
}
