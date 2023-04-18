//
//  ViewController.swift
//  acek-demo-m
//
//  Created by Nursultan Amir on 4/17/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondViewController", sender: "turtle1")
    }
    
    @IBAction func button2(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondViewController", sender: "turtle2")
    }
    
    
    @IBAction func button3(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondViewController", sender: "turtle3")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondViewController",
           let destinationVC = segue.destination as? ViewController2ViewController,
           let imageName = sender as? String {
            destinationVC.imageName = imageName
        }
    }
}

