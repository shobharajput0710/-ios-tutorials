//
//  ViewController.swift
//  TwoWayCommunicationApp
//
//  Created by KartRocket iOSOne on 09/09/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewWillAppear(_ animated: Bool) {
        if let url = Bundle.main.url(forResource: "index", withExtension:"html", subdirectory:"Web"){
            let fragUrl = NSURL(string: "#FRAG_URL", relativeTo: url)!
            let request = NSURLRequest(url: fragUrl as URL)
            webView.delegate = self
            webView.loadRequest(request as URLRequest)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

