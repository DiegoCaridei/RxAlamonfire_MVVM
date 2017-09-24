//
//  CommentViewModel.swift
//  RXAlamonfireMVVM
//
//  Created by Diego Caridei on 24/09/17.
//  Copyright © 2017 com.diego.caridei. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class CommentViewModel {
  
  private var  comment  : Comment
  let disposeBag = DisposeBag()
  
  var nameText: String? {
    return comment.name
  }
  
  var emailText: String? {
    return comment.email
  }
  
  var bodyText: String? {
    return comment.body
  }
  
  public init (comment:Comment) {
    self.comment = comment
  }
}
