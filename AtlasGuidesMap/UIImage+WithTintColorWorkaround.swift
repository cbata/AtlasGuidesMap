//
//  UIImage+WithTintColorWorkaround.swift
//  AtlasGuidesMap
//
//  Created by Chris Bata on 7/31/20.
//  Copyright © 2020 Chris Bata. All rights reserved.
//

import UIKit

extension UIImage {
    func withTintColorWorkaround(_ color: UIColor) -> UIImage {
        let image = self.withTintColor(color)
        return UIGraphicsImageRenderer(size:image.size).image {
            _ in image.draw(in:CGRect(origin:.zero, size:image.size))
        }
    }
}
