//
//  ViewController.swift
//  Project4-HackingwithSwift
//
//  Created by Burkay Atar on 9.11.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate{

    var webView: WKWebView!
    
    override func loadView() {
        //creating WKWebView instance and assign it to the webView property
        webView = WKWebView()
        //we set ViewController class as our webView's delegate
        webView.navigationDelegate = self
        //changing root view of the view controller with webview
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = URL(string: URLConstants.hackingWithSwift)!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }

    /* Delegation: -Programming Patterng- extensively used in iOS.
     A delegate is one thing acting in place of another, answering questions and responding to events on its behalf.
     In this case WKWebView does not know how our application wants to behave because it is our custom code.
     So, delegation solution comes in handy, we need to confrom it's protocol's methods and we can control it's certian behaviours.  */
}

