//
//  WebViewController.swift
//  Parkflow
//
//  Created by Karl Michel Koerich on 2018-02-08.
//  Copyright © 2018 Hamko. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://sebastienhamdy.wixsite.com/parkflow")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
}
