//
//  Comment.swift
//  RXAlamonfireMVVM
//
//  Created by Diego Caridei on 24/09/17.
//  Copyright © 2017 com.diego.caridei. All rights reserved.
//

import UIKit
struct Comment {
  var name  : String?
  var email : String?
  var body  : String?
  
  init(name: String, email: String,  body: String) {
    self.name  = name
    self.email = email
    self.body  = body
  }
}
