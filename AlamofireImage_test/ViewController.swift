//
//  ViewController.swift
//  AlamofireImage_test
//
//  Created by Jaime_Andrade on 10/26/16.
//  Copyright © 2016 lab5. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("https://httpbin.org/image/png").responseImage { response in
            debugPrint(response)
            print(response.request)
            print(response.response)
            debugPrint(response.result)
            
            if let image = response.result.value {
                print("image downloaded: \(image)")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

