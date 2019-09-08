////
////  RadiusView.swift
////  OfficeProject
////
////  Created by AsfandHafeez on 23/07/2019.
////  Copyright © 2019 AsfandHafeez. All rights reserved.
////
//
import UIKit
@IBDesignable
//class RoundUIView: UIView {
//
////    @IBInspectable var borderColor: UIColor = UIColor.white {
////        didSet {
////            self.layer.borderColor = borderColor.cgColor
////        }
////    }
////
////    @IBInspectable var borderWidth: CGFloat = 2.0 {
////        didSet {
////            self.layer.borderWidth = borderWidth
////        }
////    }
//
//    @IBInspectable var cornerRadius: CGFloat = 0.0 {
//        didSet {
//            self.layer.cornerRadius = cornerRadius
//            self.layer.shadowColor = UIColor.gray.cgColor
//            self.layer.shadowOpacity = 0.8
//            self.layer.shadowOffset = CGSize.zero
////            self.layer.shadowRadius = 6
//        }
//    }
//
//
//}
//
//
class radiusButton : UIButton {

    @IBInspectable var borderButton: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = borderButton
            
        }
    }
  
}

class BorderWIthButton: UIButton {
    @IBInspectable var buttonwithBorder: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = buttonwithBorder
            self.layer.borderWidth = buttonwithBorder
            self.layer.borderColor =  #colorLiteral(red: 0, green: 0.5215686275, blue: 0.8549019608, alpha: 1)
            
        }
    }

}
//
class circularImage : UIImageView {

    @IBInspectable var circleImage: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = circleImage
             self.layer.masksToBounds = true
        }
    }

}
//
//
//extension UIButton {
//    func setImage()  {
//        self.setImage(UIImage(named: "tick"), for: .normal)
//    }
//    func setDeselectImage()  {
//        self.setImage(.none, for: .normal)
//    }
//
//}
