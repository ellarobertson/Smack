//
//  Constants.swift
//  Smack
//
//  Created by Ella Robertson on 6/7/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//URLs
let BASE_URL = "https://smack-chat-application.herokuapp.com/v1/"
let REGISTER_URL = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
