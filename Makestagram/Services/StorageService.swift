//
//  StorageService.swift
//  Makestagram
//
//  Created by Gabe Lavarte on 7/12/17.
//  Copyright © 2017 Gabe Lavarte. All rights reserved.
//

import Foundation
import UIKit
import FirebaseStorage

struct StorageService {
    // provide method for uploading images
    static func uploadImage(_ image: UIImage, at reference: StorageReference, completion: @escaping (URL?) -> Void) {
        // 1
        guard let imageData = UIImageJPEGRepresentation(image, 0.1) else {
            return completion(nil)
        }
        
        // 2
        reference.putData(imageData, metadata: nil, completion: { (metadata, error) in
            // 3
            if let error = error {
                assertionFailure(error.localizedDescription)
                return completion(nil)
            }
            
            // 4
            completion(metadata?.downloadURL())
        })
    }

}
