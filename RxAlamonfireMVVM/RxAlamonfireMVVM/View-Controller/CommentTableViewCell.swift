//
//  CommentTableViewCell.swift
//  RXAlamonfireMVVM
//
//  Created by Diego Caridei on 24/09/17.
//  Copyright © 2017 com.diego.caridei. All rights reserved.
//

import UIKit

class CommentTableViewCell: UITableViewCell {
  @IBOutlet weak var nameLabel  : UILabel!
  @IBOutlet weak var emailLabel : UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  func setViewModel(viewModel: CommentViewModel) {
    self.nameLabel?.text = viewModel.nameText
    self.emailLabel?.text = viewModel.emailText
    
  }
}
