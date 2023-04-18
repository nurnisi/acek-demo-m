//
//  ViewController2ViewController.swift
//  acek-demo-m
//
//  Created by Nursultan Amir on 4/17/23.
//

import UIKit

class ViewController2ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadImage()
        // Do any additional setup after loading the view.
    }
    
    func loadImage() {
        if let imageName = imageName {
            let image = UIImage(named: imageName)
            imageView.image = image
        }
    }
}
