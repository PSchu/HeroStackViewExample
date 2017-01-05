//
//  ViewController.swift
//  HeroStackViewExample
//
//  Created by YiLun Zhao on 2017-01-04.
//  Copyright © 2017 PS. All rights reserved.
//

import UIKit

class ViewController:UIViewController{

  @IBOutlet weak var stackView: UIStackView!
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    // the snapshot is incorrect
    let snapshot = stackView.snapshotView(afterScreenUpdates: true)!
    
    snapshot.frame.origin = CGPoint(x: 64, y: 64)
    view.addSubview(snapshot)
  }
}
