//
//  Constant.swift
//  GeoOfferApp
//
//  Created by AsfandHafeez on 09/08/2019.
//  Copyright © 2019 AsfandHafeez. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()
typealias CompletionProducts = (_ Success: [ProductList]) -> ()
typealias CompletionMessage = (_ Success: String) -> ()


let BASE_URL = "http://codingcampus.tech/geooffer/v1/"
let BASE_URL_USERS = "http://codingcampus.tech/geooffer/v1/users/"

//let REGISTER_URL = "\(BASE_URL)account/register"
let LOGIN_URL = "\(BASE_URL)users/login"
let REGISTER_USER = "\(BASE_URL)users/register"
let COMPLETE_PROFILE_USER = "https://example.zawataafnantechnologies.com/api/sp/de"

let GET_SERVICE = "\(BASE_URL)get_service"
let CREATE_REQUEST = "\(BASE_URL)requests"
let GET_REQUEST = "\(BASE_URL)get_request"
let CREATE_ATTENDANCE = "\(BASE_URL)attendance"
let GET_ATTENDANCE = "\(BASE_URL)get_attendance"

let HEADER = [
    "Content-Type": "application/json"
]
