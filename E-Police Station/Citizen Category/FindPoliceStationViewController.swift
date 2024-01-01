//
//  FindPoliceStationViewController.swift
//  E-Police Station
//
//  Created by Apple on 01/01/24.
//

import UIKit
import WebKit

class FindPoliceStationViewController: UIViewController, WKNavigationDelegate{
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: view.bounds)
        webView.navigationDelegate = self
        view.addSubview(webView)

        if let url = URL(string: "https://www.google.com/maps") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
