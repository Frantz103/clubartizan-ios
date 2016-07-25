//
//  ViewController.swift
//  clubartizan
//
//  Created by Frantz Casimir Augustin on 2/25/16.
//  Copyright © 2016 Club Artizan. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
//Mark Properties
    @IBOutlet var containerView : UIView! = nil
    var webView: WKWebView?
    
    override func loadView() {
        super.loadView()
        
        self.webView = WKWebView()
        self.view = self.webView!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "https://www.clubartizan.com")
        let request = NSURLRequest(URL:url!)
        self.webView!.loadRequest(request)
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

