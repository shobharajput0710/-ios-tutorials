//
//  ViewController.swift
//  javaScriptCummunication
//
//  Created by KartRocket iOSOne on 10/09/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKScriptMessageHandler {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configuration = WKWebViewConfiguration()
        let controller = WKUserContentController()
        controller.add(self, name: "JSListener")
        configuration.userContentController = controller
        
        let webview = WKWebView(frame: self.view.frame, configuration: configuration)
        let url = Bundle.main.url(forResource: "index", withExtension:"html")
        let request = NSURLRequest(url: url!)
        self.view = webview
        webview.load(request as URLRequest)
        
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print( "Message from beyond: \(message.body)")
    }
    

}

