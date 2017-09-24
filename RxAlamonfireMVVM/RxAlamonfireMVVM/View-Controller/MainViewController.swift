//
//  ViewController.swift
//  RXAlamonfireMVVM
//
//  Created by Diego Caridei on 24/09/17.
//  Copyright © 2017 com.diego.caridei. All rights reserved.
//

import UIKit
import RxSwift

class MainViewController: UIViewController {

  internal enum Identifier : String {
    case cellIdentifier = "cell"
  }
  
  @IBOutlet weak var tableView: UITableView!
  let disposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    APIClient.shared.get()
      .bind(to: tableView.rx.items(cellIdentifier: Identifier.cellIdentifier.rawValue, cellType: CommentTableViewCell.self)  ) { (_,commentViewModel, cell) in
        cell.setViewModel(viewModel: commentViewModel)
      }
      .disposed(by: disposeBag)
  }
}
