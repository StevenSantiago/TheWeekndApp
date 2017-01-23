//
//  VideoVC.swift
//  TheWeekndApp
//
//  Created by Steven Santiago on 1/21/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    private var _weeknd : Weeknd!
    
    var weeknd: Weeknd {
        get {
            return _weeknd
        }
        set {
            _weeknd = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadHTMLString(weeknd.videoURL, baseURL: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
