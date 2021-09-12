//
//  EngineeringViewController.swift
//  uniPath
//
//  Created by Tutku Doga Nazli on 27.08.2020.
//  Copyright © 2020 Tutku Doga Nazli. All rights reserved.
//

import UIKit

class EngineeringViewController: UIViewController {

    @IBOutlet weak var UCLAButton: UIButton!
    @IBOutlet weak var IllinoisButton: UIButton!
    @IBOutlet weak var TexasButton: UIButton!
    @IBOutlet weak var PrincetonButton: UIButton!
    @IBOutlet weak var CornellButton: UIButton!
    @IBOutlet weak var PurdueButto: UIButton!
    @IBOutlet weak var MichiganButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 221.0/255.0, green: 121.0/255.0, blue: 157.0/255.0, alpha: 1)
        // Do any additional setup after loading the view.
    }
    @IBAction func toMichigan(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "michigan_vc") as! MichiganViewController
        present(vc, animated: true)
    }
    @IBAction func toPurdue(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "purdue_vc") as! PurdueViewController
        present(vc, animated: true)
    }
    @IBAction func toCornell(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "cornell_vc") as! CornellViewController
        present(vc, animated: true)
    }
    @IBAction func toPrinceton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "princeton_vc") as! PrincetonViewController
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
