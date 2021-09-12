//
//  Humanities2ViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 27.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class Humanities2ViewController: UIViewController {

    @IBOutlet weak var Chicago: UIButton!
    @IBOutlet weak var Michigan: UIButton!
    @IBOutlet weak var Texas: UIButton!
    @IBOutlet weak var Duke: UIButton!
    @IBOutlet weak var Georgetown: UIButton!
    @IBOutlet weak var Wisconsin: UIButton!
    @IBOutlet weak var SouthernCalifornia: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
    }
    @IBAction func toSouthernCalifornia(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "southerncalifornia_vc") as! SouthernCaliforniaViewController
        present(vc, animated: true)
    }
    @IBAction func toWisconsin(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "wisconsin_vc") as! WisconsinViewController
        present(vc, animated: true)
    }
    @IBAction func toGeorgetown(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "georgetown_vc") as! GeorgeTownViewController
        present(vc, animated: true)
    }
    @IBAction func toDuke(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "duke_vc") as! DukeViewController
        present(vc, animated: true)
    }
    @IBAction func toTexas(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "texas_vc") as! TexasViewController
        present(vc, animated: true)
    }
    @IBAction func toMichigan(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "michigan_vc") as! MichiganViewController
        present(vc, animated: true)
    }
    @IBAction func toChicago(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "uchicago_vc") as! UChicagoViewController
        present(vc, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
