//
//  Model.swift
//  GeoOfferApp
//
//  Created by AsfandHafeez on 09/08/2019.
//  Copyright © 2019 AsfandHafeez. All rights reserved.
//

import Foundation

//struct Register : Codable {
//    let  status : Int
//    let it
//}
struct Register : Codable {
    
    let status : Int
    let message : String
    
//    let name  : String
//    let surname : String
//   let  email : String
//    let gender : Int
//     let dob : String
//    let password : String
//    let confirm_password : String
    
    
    
}
struct Login: Codable {
    let status: Int
    let items : login
    let message: String?
}


struct login : Codable {
    
   let  id: Int
   let name: String
   let  surname: String
   let  gender : String
   let  dob: String?
    let  email: String
   let  country: String?
   let  city: String?
   let  province_state: String?
   let postal_zip_code: String?
   let  address1: String?
   let address2: String?
  let  phone_number: String?
  let  fax_number: String?

  let  access_token: String?
  let  code: String?
   let status: String?

  let  modified_on: String?
  let  profile_id: String?
  let  profile_photo: String?
  let  firebasekey: String?
  let  referral_id: String?
  let  phone_id: String?
}
struct AllProducts: Codable {
    let status: Int
    let items: [ProductList]
}
struct ProductList: Codable {
  let id: Int
  let name: String
  let details: String
  let price: Int
  let discount: Int?
  let discount_date: String?
  let discount_expiry: String?
  let category_id: String
  let store_id: String
  let product_image: String
  var isEnabled: Bool?
//  let lat": null,
//  let lon": null,
  let status: String
}
struct AllCategoryList: Codable {
    let items: [CategoryList]
}
struct AllStoresList: Codable {
    let items: [StoreList]
}
struct CategoryList: Codable {
    let id: Int
    let name: String
    let details: String
    let status: String
    var isEnabled: Bool?
}
struct StoreList: Codable {
    let id: Int
    let name: String
    let details: String
    let store_image: String?
    let lat: Double
    let lon: Double
    var isEnabled: Bool?
    
}
struct APIMessage: Codable {
    let message: String
    
}
