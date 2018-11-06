//
//  ViewController.swift
//  Launchpad
//
//  Created by Jamie Brooks on 10/18/18.
//  Copyright © 2018 Ellie Mae. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var webView: WKWebView!
    
    var appName = Bundle.main.infoDictionary?["CFBundleName"] as! String
    var baseURL = Bundle.main.infoDictionary?["BaseURL"] as! String
    var appPath = Bundle.main.infoDictionary?["ApplicationPath"] as! String
    var logoutPath = Bundle.main.infoDictionary?["LogoutPath"] as! String

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self

        initStatusBar()
        hideNavigationBar()
        hideMenuView()
        loadLogonPage()
    }

    private func initStatusBar() {
        UIApplication.shared.statusBarView?.backgroundColor = UIColor(red: 0/255, green: 106/255, blue: 169/255, alpha: 1.0)
    }
    
    private func hideNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    private func showNavigationBar() {
        navigationItem.title = appName
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    private func hideMenuView() {
        menuView.isHidden = true
    }
    
    private func showMenuView() {
        menuView.isHidden = false
    }

    private func toggleMenuView() {
        menuView.isHidden = !menuView.isHidden
    }

    private func loadLogonPage() {
        let logonURL = URL(string: "https://\(baseURL)")
        webView.load(URLRequest(url: logonURL!))
    }
    
    @IBAction func hideMenu(_ sender: Any) {
        NSLog("Hide menu")
        hideMenuView()
    }
    
    @IBAction func showMenu(_ sender: Any) {
        print("Show menu")
        showMenuView()
    }
    
    @IBAction func toggleMenu(_ sender: Any) {
        print("Toggle menu")
        toggleMenuView()
    }

    @IBAction func showAlarms(_ sender: Any) {
        print("Show alarms")
    }

    @IBAction func performLogout(_ sender: Any) {
        print("Logout")
        hideMenuView()
        let logoutURL = URL(string: "https://\(baseURL)\(logoutPath)")
        webView.load(URLRequest(url: logoutURL!))
    }
}

extension ViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let host = webView.url?.host
        let path = webView.url?.path
        if (host == baseURL && path == appPath) {
            showNavigationBar()
        } else {
            hideNavigationBar()
        }
    }
}
