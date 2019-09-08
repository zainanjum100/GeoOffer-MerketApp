//
//  VCExts.swift
//  GeoOfferApp
//
//  Created by ZainAnjum on 24/08/2019.
//  Copyright © 2019 AsfandHafeez. All rights reserved.
//

import UIKit

extension UIView{
    func addConstraintsWithFormat(format: String, views: UIView...) {
        
        var viewsDictionary = [String: UIView]()
        for(index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
extension UIViewController{
    
    func toast(_ msg: String) {
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        self.present(alert, animated: true)
        
        // duration in seconds
        let duration: Double = 1
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + duration) {
            alert.dismiss(animated: true)
        }
    }
    
    func addingHeader(vc: UIViewController)  {
//        let vcs = vc as! HomeVC
        
        
        let header = HeaderVC(nibName: "HeaderVC" , bundle : nil)
        vc.view.addSubview(header.view)
        self.view.addConstraintsWithFormat(format: "H:|[v0]|", views: header.view)
        
//        if let vcs = vc as? HomeVC{
            header.mapBtn.addTarget(self, action: #selector(changeFrontVC(_:)), for: .touchUpInside)
            header.superMarketBtn.addTarget(self, action: #selector(changeFrontVC(_:)), for: .touchUpInside)
            header.productsBtn.addTarget(self, action: #selector(changeFrontVC(_:)), for: .touchUpInside)
            header.gamesBtn.addTarget(self, action: #selector(changeFrontVC(_:)), for: .touchUpInside)
            header.creditBtn.addTarget(self, action: #selector(changeFrontVC(_:)), for: .touchUpInside)
            header.notificationsBtn.addTarget(self, action: #selector(changeFrontVC(_:)), for: .touchUpInside)
//        }
//        }else{
//            print("ELSE VC")
//        }
        
        
        if UIDevice().userInterfaceIdiom == .phone {
            switch UIScreen.main.nativeBounds.height {
            case 2436, 2688, 1792:
                print("iPhone X, XS, XR")
                //Devices with noth
                self.view.addConstraintsWithFormat(format: "V:|[v0(140)]", views: header.view)
            default:
                //Devices without notch
                self.view.addConstraintsWithFormat(format: "V:|[v0(120)]", views: header.view)
            }
        }
        
        vc.addChild(header)
    }
    func registerCell(_ tableView: UITableView) {
        tableView.register(UINib(nibName: "ProductCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    @objc func changeFrontVC(_ sender: UIButton) {
        var vc: UIViewController!
        switch sender.tag {
            
        case 1:
            vc = storyboard?.instantiateViewController(withIdentifier: "MapVC")
            self.revealViewController()?.setFront(vc, animated: true)
        case 2:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ProductsVC") as! ProductsVC
            vc.isProductVisible = false
            self.revealViewController()?.setFront(vc, animated: true)
            break
        case 3:
            let vc = storyboard?.instantiateViewController(withIdentifier: "ProductsVC") as! ProductsVC
            vc.isProductVisible = true
            self.revealViewController()?.setFront(vc, animated: true)
            break
        case 4:
            vc = storyboard?.instantiateViewController(withIdentifier: "GamesVC")
            self.revealViewController()?.setFront(vc, animated: true)
        case 5:
            vc = storyboard?.instantiateViewController(withIdentifier: "CreditsVC")
            self.revealViewController()?.setFront(vc, animated: true)
        case 6:
            vc = storyboard?.instantiateViewController(withIdentifier: "NotificationVC")
            self.revealViewController()?.setFront(vc, animated: true)
        default:
            break
        }
        
        
    }
}
