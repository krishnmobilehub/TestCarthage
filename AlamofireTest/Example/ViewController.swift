//
//  ViewController.swift
//  Example
//
//  Created by Dhaval Trivedi on 29/12/20.
//

import UIKit
import AlamofireTest

class ViewController: UIViewController {
    
    var alamofire = AlamofireKit()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AlamofireKit.networkCall { (result) in
            print(result)
        }
    }

}

