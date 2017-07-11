//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Gabe Lavarte on 7/11/17.
//  Copyright © 2017 Gabe Lavarte. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        delegate = self
        // 2
        tabBar.unselectedItemTintColor = .black
    }
}
