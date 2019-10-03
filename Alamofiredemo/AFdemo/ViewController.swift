//
//  ViewController.swift
//  AFdemo
//
//  Created by KartRocket iOSOne on 19/08/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("https://jsonplaceholder.typicode.com/posts/1", method: .put , parameters: [:] , encoding: JSONEncoding.default , headers: [:])
            .responseJSON{ (response) in
        
            print(response)
    }


}

}
