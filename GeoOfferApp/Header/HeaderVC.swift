//
//  HeaderVC.swift
//  GeoOfferApp
//
//  Created by AsfandHafeez on 16/08/2019.
//  Copyright © 2019 AsfandHafeez. All rights reserved.
//

import UIKit

class HeaderVC: UIViewController {
@IBOutlet weak var burgerBtn: UIButton!
    @IBOutlet weak var mapBtn: UIButton!
    @IBOutlet weak var superMarketBtn: UIButton!
    @IBOutlet weak var productsBtn: UIButton!
    @IBOutlet weak var gamesBtn: UIButton!
    @IBOutlet weak var creditBtn: UIButton!
    @IBOutlet weak var notificationsBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        burgerBtn.addTarget(self.revealViewController(), action: #selector(revealViewController().revealToggle(_:)), for: .touchUpInside)
//        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
//        mapBtn.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)


      

    }
//    @objc func btnAction(_ sender: UIButton) {
//        ApiService.instance.tag = 7
//        let vc = storyboard?.instantiateViewController(withIdentifier: "SWRevealViewController")
//        if let window = UIApplication.shared.keyWindow{
//            window.rootViewController = vc
//        }
//    }


 

}
