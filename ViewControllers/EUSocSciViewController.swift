//
//  EUSocSciViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 30.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class EUSocSciViewController: UIViewController {

    @IBOutlet weak var Amsterdam: UIButton!
    @IBOutlet weak var ETH: UIButton!
    @IBOutlet weak var KU: UIButton!
    @IBOutlet weak var Zurich: UIButton!
    @IBOutlet weak var Ludwig: UIButton!
    @IBOutlet weak var Munich: UIButton!
    @IBOutlet weak var Delft: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
    }
    @IBAction func toDelft(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "delft_vc") as! DelftViewController
        present(vc, animated: true)
    }
    @IBAction func toMunich(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "munich_vc") as! MunichViewController
        present(vc, animated: true)
    }
    @IBAction func toLudwig(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ludwig_vc") as! LudwigViewController
        present(vc, animated: true)
    }
    @IBAction func toZurich(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "zurich_vc") as! ZurichViewController
        present(vc, animated: true)
    }
    @IBAction func toKU(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ku_vc") as! KUViewController
        present(vc, animated: true)
    }
    @IBAction func toETH(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "eth_vc") as! ETHViewController
        present(vc, animated: true)
    }
    @IBAction func toAmsterdam(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "amsterdam_vc") as! AmsterdamViewController
        present(vc, animated: true)
    }
}
