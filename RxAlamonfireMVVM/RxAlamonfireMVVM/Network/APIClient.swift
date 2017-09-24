//
//  APIClient.swift
//  RXAlamonfireMVVM
//
//  Created by Diego Caridei on 24/09/17.
//  Copyright © 2017 com.diego.caridei. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import RxAlamofire
import SwiftyJSON

final class APIClient {
  
  internal enum Api : String {
    case comments = "https://jsonplaceholder.typicode.com/comments"
  }
  
  static let shared = APIClient()
  
  private init() { }
  
  func get() -> Observable<[CommentViewModel]>{
    return RxAlamofire
      .request(.get, Api.comments.rawValue)
      .flatMap {
        $0.validate(statusCode: 200..<300)
          .rx.json()
      }
      .retry(3)
      .map{(data) -> [CommentViewModel] in
        var commentsViewModel = [CommentViewModel]()
        let json = JSON(data)
        for (_,jsonValue):(String, JSON) in json {
          if  let name  = jsonValue["name"].string,
            let email = jsonValue["email"].string,
            let body  = jsonValue["body"].string {
            commentsViewModel.append(CommentViewModel(comment:
              Comment(name: name,
                      email: email,
                      body: body)))
          }
        }
        return commentsViewModel
    }
  }
}
