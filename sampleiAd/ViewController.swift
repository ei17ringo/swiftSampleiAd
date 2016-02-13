//
//  ViewController.swift
//  sampleiAd
//
//  Created by Eriko Ichinohe on 2016/02/10.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController {

    @IBOutlet weak var myAdBanner: ADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.canDisplayBannerAds = true
        self.myAdBanner.hidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func bannerViewDidLoadAd(banner: ADBannerView!) {
        self.myAdBanner?.hidden = false
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return willLeave
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        self.myAdBanner?.hidden = true
    }

}

