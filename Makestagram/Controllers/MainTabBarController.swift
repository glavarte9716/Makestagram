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
    
    let photoHelper = MGPhotoHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoHelper.completionHandler = { image in
            PostService.create(for: image)
        }
        
        delegate = self
        tabBar.unselectedItemTintColor = .black
    }
}
