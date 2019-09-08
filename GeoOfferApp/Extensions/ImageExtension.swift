//
//  ImageExtension.swift
//  OfficeProject
//
//  Created by AsfandHafeez on 06/08/2019.
//  Copyright © 2019 AsfandHafeez. All rights reserved.
//

import UIKit
let imageCache = NSCache<AnyObject, AnyObject>()

public extension UIImageView {
    func cacheImage(urlString: String){
        let url = URL(string: urlString)
        
        self.image = nil
        
        if let imageFromCache = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = imageFromCache
            return
        }
        guard let imageUrl = url else{ return }
        URLSession.shared.dataTask(with: imageUrl) {
            data, response, error in
            if let response = data {
                DispatchQueue.main.async {
                    let imageToCache = UIImage(data: response)
                    imageCache.setObject(imageToCache!, forKey: urlString as AnyObject)
                    self.image = imageToCache
                }
            }
            }.resume()
    }
}

